<?php


ini_set('display_errors', 1);
error_reporting(E_ALL);

define('ROOT', dirname(__FILE__));
require_once(ROOT.'/components/Router.php');
require_once(ROOT.'/components/Db.php');


$router = new Router();
$router->run();


//if (isset($_SESSION['login'])) :
//    echo " Hello, ".$_SESSION['login']. "<a href='/task'>go to diary task</a> ";
//
//else:
//    echo " Hello, ".$_SESSION['login']. "<a href='/login'>you must Log in</a> ";
//
//endif;