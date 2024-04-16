part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;

  const factory TaskEvent.saveTask(
    final String taskTitle,
    final double taskStatus,
    final DateTime taskExpiryDate
   
  ) = SaveTaskEvent;

  
}