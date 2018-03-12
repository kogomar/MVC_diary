<?php

include_once ROOT. '/models/Task.php';

class TaskController {

	public function actionIndex()
	{
		
		$taskList = array();
		$taskList= Task::getTaskList();

		require_once(ROOT . '/views/task.php');

		return true;
	}
}

