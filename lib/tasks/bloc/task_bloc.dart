import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:value_8_project/tasks/common/utils/extensions.dart';
import 'package:value_8_project/tasks/common/utils/logger.dart';
import 'package:value_8_project/tasks/data/models/task.dart';

import '../data/task_repository.dart';
import '../db/database.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TasksRepository taskRepository;

  TaskBloc(this.taskRepository) : super(const TaskState.initial()) {
    on<SaveTaskEvent>(_saveTask);
  }

  // function that performs validation and returns a list of errors
  List<TaskDetailsValidationError> _validateTasks(SaveTaskEvent event) {
    List<TaskDetailsValidationError> validationErrors = [];
    
    if (event.taskTitle.isEmpty) {
      validationErrors.add(TaskDetailsValidationError.taskNameInvalid);
    }
    if (event.taskStatus.toString().isEmpty) {
      validationErrors.add(TaskDetailsValidationError.taskStatusInvalid);
    }
    if (event.taskExpiryDate.toString().isEmpty) {
      validationErrors.add(TaskDetailsValidationError.taskExpiryDateInvalid);
    }
    return validationErrors;
  }

// Updated _createProject function using the validation function
  Future<void> _saveTask(SaveTaskEvent event, Emitter<TaskState> emit) async {
    List<TaskDetailsValidationError> validationErrors = _validateTasks(event);


    //check if the validation list is empty, then emit entire list as a state
    if (validationErrors.isNotEmpty) {
      emit(TaskDetailsInvalid(timeStamp(), validationErrors));
      return;
    }

    if (validationErrors.isEmpty) {
      emit(TaskSavingState(timeStamp()));
      try {
         
           await taskRepository.saveProjectDetails( Task(
          taskName: event.taskTitle,
          dueDate: event.taskExpiryDate,
          progress: event.taskStatus 
        ));  
         
        // await taskRepository.getTasksFromLocal(); //retruns the data form the db in this format
        emit(TaskSaveSuccessState(timeStamp(),  await taskRepository.getTasksFromLocal()));
      } catch (error) {
        emit(TaskDetailsSaveFailureState(timeStamp(), error.toString()));
        logger.i(error.toString());
      }
    }
  }

   


}
