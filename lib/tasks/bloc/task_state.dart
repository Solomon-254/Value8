part of 'task_bloc.dart';

enum TaskDetailsValidationError {
  taskNameInvalid,
  taskStatusInvalid,
  taskExpiryDateInvalid,
   
}

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;

  const factory TaskState.taskSaving(int timestamp) =
      TaskSavingState;

  const factory TaskState.taskCreationInvalid(
    int timestamp,
    List<TaskDetailsValidationError> error,
  ) = TaskDetailsInvalid;

  const factory TaskState.taskSaveSuccess(int timestamp, List<TasksLocal> tasks) =
      TaskSaveSuccessState;

  const factory TaskState.taskaveFailure(int timestamp, String error) =
      TaskDetailsSaveFailureState;

     
  
   
     
}