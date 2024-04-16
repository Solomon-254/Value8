import 'package:flutter/material.dart';
import 'package:value_8_project/tasks/data/task_repository.dart';
import 'package:get_it/get_it.dart';

import 'tasks/di/task_di.dart';
import 'tasks/ui/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerModules();
    final taskRepoo = GetIt.instance<TasksRepository>();
    final tasks = await taskRepoo.getTasksFromLocal();

  runApp( App(tasks: tasks,));
}

Future<void> registerModules() async {
  registerTaskModule();
}
