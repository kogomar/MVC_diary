<?php


class Task
{
	/**
	* Returns an array of tasks items
	*/
	public static function getTaskList() {


		$db = Db::getConnection();
		$taskList = array();

		$result = $db->query("SELECT * FROM task ORDER BY id DESC");

		$i = 0;
		while($row = $result->fetch()) {
			$taskList[$i]['id'] = $row['id'];
			$taskList[$i]['title'] = $row['title'];
			$taskList[$i]['text'] = $row['text'];
			$taskList[$i]['status'] = $row['status'];
            $taskList[$i]['user'] = $row['user'];
			$taskList[$i]['tdate'] = $row['tdate'];
			$i++;
		}

		return $taskList;
	
}

}