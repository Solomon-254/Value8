import 'package:flutter/material.dart';
import 'package:value_8_project/tasks/common/utils/theme.dart';
import 'package:value_8_project/tasks/ui/home.dart';

import '../db/database.dart';



class App extends StatelessWidget {
  final List<TasksLocal> tasks;
  const App({super.key, required this.tasks});
  @override
  Widget build(BuildContext context)  
  
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: modernTheme,
      home:  HomePage(tasks: tasks),
    );
  }
}


  
