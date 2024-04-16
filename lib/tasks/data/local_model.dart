import 'package:drift/drift.dart';

@DataClassName('TasksLocal')
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get taskName => text()();
  TextColumn get taskStatus => text()();
  TextColumn get taskDueDate => text()();
 
}