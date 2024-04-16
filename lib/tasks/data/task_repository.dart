 
import 'package:value_8_project/tasks/data/models/local_data_source.dart';
import 'package:value_8_project/tasks/data/models/task.dart';

import '../db/database.dart';

class TasksRepository {
  final TaskLocalDataStore localDataSource;
 
  TasksRepository(this.localDataSource);

  Future<void> saveProjectDetails(Task task) async {
    localDataSource.saveProjectToDB(task.toLocal()); //send to DB
  }

 Future<List<TasksLocal>> getTasksFromLocal() async {
  return localDataSource.allProjectsInDB();
}
}