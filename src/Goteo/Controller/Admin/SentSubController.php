<?php
/**
 * Historial de envios en el nodo
 */
namespace Goteo\Controller\Admin;

use Goteo\Application\Config;
use Goteo\Model\Node,
	Goteo\Library\Feed,
	Goteo\Library\Template,
	Goteo\Library\Mail;

class SentSubController extends AbstractSubController {

    static protected $labels = array (
      'list' => 'Emails enviados',
    );


    static protected $label = 'Historial envíos';


    protected $filters = array (
      'user' => '',
      'template' => '',
      'node' => '',
      'date_from' => '',
      'date_until' => '',
    );

    /**
     * Overwrite some permissions
     * @inherit
     */
    static public function isAllowed(\Goteo\Model\User $user, $node) {
        // Only central node or superadmins allowed here
        if( ! (Config::isMasterNode($node) || $user->hasRoleInNode($node, ['superadmin', 'root'])) ) return false;
        return parent::isAllowed($user, $node);
    }

    public function listAction($id = null, $subaction = null) {
        $templates = Template::getAllMini();
        $nodes = array();
        $all_nodes = Node::getList();
        foreach($this->user->getAdminNodes() as $node_id => $role) {
            $nodes[$node_id] = $all_nodes[$node_id];
        }

        $filters = $this->getFilters();
        $limit = 20;
        $sent = Mail::getSentList($filters, $this->node, $this->getGet('pag') * $limit, $limit);
        $total = Mail::getSentList($filters, $this->node, 0, 0, true);

        return array(
                'template' => 'admin/sent/list',
                'filters' => $filters,
                'templates' => $templates,
                'nodes' => $nodes,
                'sent' => $sent,
                'total' => $total,
                'limit' => $limit
        );
    }

}
