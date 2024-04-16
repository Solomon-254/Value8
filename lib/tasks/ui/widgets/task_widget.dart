
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:value_8_project/tasks/db/database.dart';
import 'package:value_8_project/tasks/ui/home.dart';

import '../../data/models/local_data_source.dart';

 
class TaskWidget extends StatefulWidget {
  final TasksLocal task;
   final List<TasksLocal> tasks;

  const TaskWidget({Key? key, required this.task, required this.tasks}) : super(key: key);

  @override
  _TaskWidgetState createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  TaskLocalDataStore store = TaskLocalDataStore(ValueChainDB());
  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final taskDueDate = DateTime.parse(widget.task.taskDueDate);
    final dueDateDifference = taskDueDate.difference(now).inDays;
    Color borderColor;

    if (dueDateDifference < 0) {
      borderColor = Colors.red; // Overdue
    } else if (dueDateDifference <= 2) {
      borderColor = Colors.yellow; // Warning (within 2 days)
    } else {
      borderColor = Colors.green; // Far away
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: borderColor,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.task.taskName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${(double.parse(widget.task.taskStatus) * 100).toStringAsFixed(0)}%',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LinearProgressIndicator(
                  value: double.tryParse(widget.task.taskStatus),
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Due: ${_formatDate(taskDueDate)}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            // Handle edit action
                          },
                          icon: const Icon(Icons.edit),
                        ),
                        IconButton(
  onPressed: () async {
    // Delete task from the database
    await store.deleteTaskFromDB(widget.task.taskName);
    
    // Remove the deleted task from the list
    List<TasksLocal> updatedTasks = List<TasksLocal>.from(widget.tasks);
    updatedTasks.removeWhere((task) => task.taskName == widget.task.taskName);

    // Navigate to HomePage with the updated tasks list
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            HomePage(tasks: updatedTasks), // Pass the updated tasks list
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.ease;
          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  },
  icon: const Icon(Icons.delete),
),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime date) {
    final dateFormat = DateFormat('MMM d, yyyy');
    return dateFormat.format(date);
  }

  void _navigateToAddingNewTask() {
    // Navigate to notifications screen with custom transition
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                             HomePage(tasks:widget.tasks,), // Replace NotificationScreen with your actual notifications screen
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;
                          var tween = Tween(begin: begin, end: end)
                              .chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );

}
}