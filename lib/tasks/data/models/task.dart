import 'package:value_8_project/tasks/db/database.dart';

class Task {
  final String taskName;
  final double progress;
  final DateTime dueDate;

  Task({
    required this.taskName,
    required this.progress,
    required this.dueDate,
  });


  Task.fromMap(Map<String?, dynamic> map)
           : taskName = map['taskName'],
              progress = map['progress'],
              dueDate = map['dueDate']
             ;

   Map<String, dynamic> toMap() => {
      'taskName': taskName,
      'progress': progress,
      'dueDate': dueDate,
   };

   Map<String, dynamic> toTableMap() => {
      'taskName': taskName,
      'progress': progress,
      'dueDate': dueDate,
   };


    TasksCompanion toLocal() {
    return TasksCompanion.insert(
        taskName: taskName,
        taskDueDate: dueDate.toString(),
        taskStatus: progress.toString()
        );
        
  }


  
  
}


// Database/Models/task.dart
