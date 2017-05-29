<?php
/*
 * This file is part of the Goteo Package.
 *
 * (c) Platoniq y Fundación Goteo <fundacion@goteo.org>
 *
 * For the full copyright and license information, please view the README.md
 * and LICENSE files that was distributed with this source code.
 */

namespace Goteo\Controller\Dashboard;

use Symfony\Component\HttpFoundation\Request;

use Goteo\Application\Exception\ControllerAccessDeniedException;
use Goteo\Application\Session;
use Goteo\Application\Config;
use Goteo\Application\View;
use Goteo\Model\Project;
use Goteo\Model\Project\Reward;
use Goteo\Model\User;
use Goteo\Model\User\Interest;

class AjaxDashboardController extends \Goteo\Core\Controller {

    public function __construct() {
        // changing to a responsive theme here
        View::setTheme('responsive');
    }

    /**
     * Projects suggestion by user interests (categories)
     */
    public function projectsInterestsAction(Request $request)
    {

        $offset = (int)$request->query->get('offset');
        $limit = (int)$request->query->get('limit');
        if(empty($limit)) $limit = 6;

        $user = Session::getUser();

        $interests = Interest::getAll();

        if ($request->isMethod('post')) {
            $interest = $request->request->get('id');
            $value = $request->request->get('value');
            if($value) {
                $user->interests[$interest] = $interest;
            } else {
                unset($user->interests[$interest]);
            }
            $user->save();
        }

        //proyectos que coinciden con mis intereses
        $favourite = Project::favouriteCategories($user->id, $offset, $limit);
        if($favourite) {
            $total = Project::favouriteCategories($user->id, 0, 0, true);
        } elseif($offset === 0) {
            // Special case
            $favourite = Project::published('popular', null, $offset, $limit);
            $total = Project::published('popular', null, 0, 0, true);
        }

        return $this->jsonResponse([
            'total' => $total,
            'offset' => $offset,
            'limit' => $limit,
            'html' => View::render( 'dashboard/partials/projects_widgets_list', ['projects' => $favourite] )
        ]);
    }

    /**
     * User's projects
     */
    public function projectsMineAction(Request $request)
    {

        $offset = (int)$request->query->get('offset');
        $limit = (int)$request->query->get('limit');
        if(empty($limit)) $limit = 6;

        $userId = Session::getUserId();

        //proyectos que coinciden con mis intereses
        $projects = Project::ofmine($userId, false, $offset, $limit);
        $total = Project::ofmine($userId, false, 0, 0, true);

        return $this->jsonResponse([
            'total' => $total,
            'offset' => $offset,
            'limit' => $limit,
            'html' => View::render( 'dashboard/partials/projects_widgets_list', ['projects' => $projects] )
        ]);

    }

    /**
     * User's invested projects
     */
    public function projectsInvestedAction(Request $request)
    {

        $offset = (int)$request->query->get('offset');
        $limit = (int)$request->query->get('limit');
        if(empty($limit)) $limit = 6;

        $userId = Session::getUserId();

        //proyectos que coinciden con mis intereses
        $projects = User::invested($userId, false, $offset, $limit);
        $total = User::invested($userId, false, 0, 0, true);

        return $this->jsonResponse([
            'total' => $total,
            'offset' => $offset,
            'limit' => $limit,
            'html' => View::render( 'dashboard/partials/projects_widgets_list', ['projects' => $projects] )
        ]);

    }

    /**
     * get materials table
     */
    public function projectMaterialsTableAction($id, Request $request)
    {
        $project = Project::get($id);
        if(!$project->userCanView(Session::getUser())) {
            throw new ControllerAccessDeniedException();
        }

        $licenses_list = Reward::licenses();

        return $this->viewResponse(
            'dashboard/project/partials/materials/materials_table',
            [
                'project' => $project,
                'licenses_list' => $licenses_list
            ]
        );

    }


}
