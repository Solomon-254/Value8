import 'package:get_it/get_it.dart';
import 'package:value_8_project/tasks/bloc/task_bloc.dart';
import 'package:value_8_project/tasks/data/models/local_data_source.dart';
import 'package:value_8_project/tasks/data/task_repository.dart';

import '../db/database.dart';

void registerTaskModule() {
  final getIt = GetIt.instance;
  getIt.registerSingleton(ValueChainDB());

  getIt.registerFactory<TaskLocalDataStore>(
    () => TaskLocalDataStore(getIt<ValueChainDB>()),
  );
  getIt.registerFactory<TasksRepository>(
    () => TasksRepository(getIt(),),
  );
 
  getIt.registerSingleton(TaskBloc(getIt()));
}
