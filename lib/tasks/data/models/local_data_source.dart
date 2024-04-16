import 'package:value_8_project/tasks/common/utils/logger.dart';
import 'package:value_8_project/tasks/db/database.dart';

class TaskLocalDataStore {
  final ValueChainDB valueDB;

  TaskLocalDataStore(this.valueDB);

  //save project
  Future<void> saveProjectToDB(TasksCompanion companion) async {
    final table = valueDB.tasks;
    try {
      await valueDB.into(table).insert(companion);
      logger.i("Task Details Successfully saved to Value Chain DB");
    } catch (e) {
      logger.i('Failed to insert data: $e');
    }
  }

  //get all projects
 Future<List<TasksLocal>> allProjectsInDB() async {
  final selectExpr = valueDB.select(valueDB.tasks);
  List<TasksLocal> tasks = await selectExpr.get();

  // Log all tasks
  tasks.forEach((task) {
    print('Task ID: ${task.id}, Task Name: ${task.taskName},  Task status : ${task.taskStatus},  Task Due date: ${task.taskDueDate}');
  });

  return tasks;
}

// Delete a task from the database
Future<int> deleteTaskFromDB(String taskName) async {
  try {
    final deleteStatement = valueDB.delete(valueDB.tasks);
    deleteStatement.where((task) => task.taskName.equals(taskName));
    final rowsDeleted = await deleteStatement.go();
    logger.i("$rowsDeleted task(s) deleted from Value Chain DB");
    return rowsDeleted;
  } catch (e) {
    logger.i('Failed to delete task: $e');
    rethrow;
  }
}






}
