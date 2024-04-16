import 'package:value_8_project/tasks/ui/add_task.dart';

import '../db/database.dart';
import 'widgets/appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/task_widget.dart';



class HomePage extends StatefulWidget {
  final List<TasksLocal> tasks;
  const HomePage({super.key, required this.tasks});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TasksLocal> get _sortedTasks {
    return [...widget.tasks]..sort((a, b) => a.taskDueDate.compareTo(b.taskDueDate));
  }

   List<TasksLocal> alltasks= [];
 
 @override
  void initState(){
  super.initState();
  alltasks =widget.tasks;

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(title: "Welcome"),
      body: Stack(
        children: [
          if (widget.tasks.isNotEmpty)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Tasks',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Tooltip(
                        message: 'Add new Task',
                        child: IconButton(
                            onPressed: _navigateToAddingNewTask,
                            icon: const Icon(Icons.add),
                            iconSize: 28,
                          ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: ListView.builder(
                      itemCount: _sortedTasks.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: TaskWidget(
                            task: _sortedTasks[index],
                            tasks: widget.tasks,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          else
            Center(
              child: FutureBuilder(
                future: Future.delayed(const Duration(seconds: 2)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: _navigateToAddingNewTask,
                          icon: const Icon(Icons.add),
                          iconSize: 48,
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Add New Task',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            ),
            if(widget.tasks.isNotEmpty)
          Positioned(
            bottom: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Map',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      const Text('Far away due date'),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.yellow,
                      ),
                      const SizedBox(width: 8),
                      const Text('Due date within 2 days'),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 8),
                      const Text('Overdue'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToAddingNewTask() {
    // Navigate to notifications screen with custom transition
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const NewTaskScreenView(), // Replace NotificationScreen with your actual notifications screen
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
