<?php/** * Created by PhpStorm. * User: Kogomar * Date: 11.03.2018 * Time: 20:13 */class UpdateStat{    public static function getStat()    {        $db = Db::getConnection();        if (!empty($_POST['tid']) && !empty($_POST['status'])){            $task_id= $_POST['tid'];            $status=$_POST['status'];            $db->query("UPDATE `task` SET `status`=$status WHERE `id` = $task_id");        }    }}