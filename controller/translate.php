<?php

namespace Goteo\Controller {

	use Goteo\Core\ACL,
        Goteo\Core\View,
        Goteo\Core\Redirection,
        Goteo\Model,
	    Goteo\Library\Text,
	    Goteo\Library\Page,
	    Goteo\Library\Content,
		Goteo\Library\Lang;

	class Translate extends \Goteo\Core\Controller {

        public function index () {
            return new View('view/translate/index.html.php');
        }

        public function select ($section = '', $option = '', $id = null) {

            $_SESSION['translator_lang'] = isset($_POST['lang']) ? $_POST['lang'] : GOTEO_DEFAULT_LANG;

            if (!empty($section) && !empty($option)) {
                return call_user_func_array ( 'static::'.$section , array($option, $id) );
            } else {
                return new View('view/translate/index.html.php');
            }
        }

        /*
         * Gestión de páginas institucionales
         */
		public function pages ($option = 'list', $id = null) {

            $errors = array();

            // si llega post, vamos a guardar los cambios
            if ($option == 'edit' && $_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['save'])) {
                $page = Page::get($id, $_SESSION['translator_lang']);
                $page->content = $_POST['content'];
                if ($page->save($errors)) {
                    throw new Redirection("/translate/pages");
                }
            }

            // sino, mostramos la lista
            return new View(
                'view/translate/index.html.php',
                array(
                    'section' => 'pages',
                    'option' => $option,
                    'id' => $id,
                    'errors'=>$errors
                )
             );

		}
        

		public function texts ($option = 'list', $id = null) {

            $errors = array();
            
            // comprobamos los filtros
            $filters = array();
            $fields = array('idfilter', 'group', 'text');
            foreach ($fields as $field) {
                if (isset($_GET[$field])) {
                    $filters[$field] = $_GET[$field];
                }
            }

            $filter = "?idfilter={$filters['idfilter']}&group={$filters['group']}&text={$filters['text']}";

            // si llega post, vamos a guardar los cambios
            if ($option == 'edit' && $_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['save'])) {

                if (Text::save(array(
                                'id'   => $id,
                                'text' => $_POST['text'],
                                'lang' => $_SESSION['translator_lang']
                            ), $errors)) {
                    throw new Redirection("/translate/texts/$filter");
                }
            }

            // sino, mostramos la lista
            return new View(
                'view/translate/index.html.php',
                array(
                    'section' => 'texts',
                    'option'  => $option,
                    'id'      => $id,
                    'filter' => $filter,
                    'filters' => $filters,
                    'errors'  => $errors
                )
             );

		}


        /* Contents */
		public function contents ($option = 'list', $id = null) {

            $errors = array();

            // comprobamos los filtros
            $filters = array();
            $fields = array('type', 'table', 'text');
            foreach ($fields as $field) {
                if (isset($_GET[$field])) {
                    $filters[$field] = $_GET[$field];
                }
            }

            $filter = "?type={$filters['type']}&table={$filters['table']}&text={$filters['text']}";

            // si llega post, vamos a guardar los cambios
            if ($option == 'edit' && $_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['save'])) {
                die(\trace($_POST));
                /*
                'id'   => $id,
                'text' => $_POST['text'],
                 */

                /*
                 * Falta añadir los campos
                 * 
                if (Contents::save(array(
                                'id'   => $id,
                                'table'=> $table,
                                'lang' => $_SESSION['translator_lang']
                            ), $errors)) {
                    throw new Redirection("/translate/contents/$filter");
                }
                 */
            }

            // sino, mostramos la lista
            return new View(
                'view/translate/index.html.php',
                array(
                    'section' => 'contents',
                    'option'  => $option,
                    'id'      => $id,
                    'filter' => $filter,
                    'filters' => $filters,
                    'errors'  => $errors
                )
             );
        }

        /*
         * proyectos destacados
         */

        /*
         * preguntas frecuentes
         */

        /*
         * criterios de puntuación Goteo
         */

        /*
         * Tipos de Retorno/Recompensa (iconos)
         */

        /*
         * Licencias
         */

        /*
         *  categorias de proyectos / intereses usuarios
         */

        /*
         *  Gestión de tags de blog
         */

        /*
         * Gestión de entradas de blog
         */

        /*
         *  Gestión de noticias
         */

	}

}
