// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $TasksTable extends Tasks with TableInfo<$TasksTable, TasksLocal> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _taskNameMeta =
      const VerificationMeta('taskName');
  @override
  late final GeneratedColumn<String> taskName = GeneratedColumn<String>(
      'task_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _taskStatusMeta =
      const VerificationMeta('taskStatus');
  @override
  late final GeneratedColumn<String> taskStatus = GeneratedColumn<String>(
      'task_status', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _taskDueDateMeta =
      const VerificationMeta('taskDueDate');
  @override
  late final GeneratedColumn<String> taskDueDate = GeneratedColumn<String>(
      'task_due_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, taskName, taskStatus, taskDueDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<TasksLocal> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('task_name')) {
      context.handle(_taskNameMeta,
          taskName.isAcceptableOrUnknown(data['task_name']!, _taskNameMeta));
    } else if (isInserting) {
      context.missing(_taskNameMeta);
    }
    if (data.containsKey('task_status')) {
      context.handle(
          _taskStatusMeta,
          taskStatus.isAcceptableOrUnknown(
              data['task_status']!, _taskStatusMeta));
    } else if (isInserting) {
      context.missing(_taskStatusMeta);
    }
    if (data.containsKey('task_due_date')) {
      context.handle(
          _taskDueDateMeta,
          taskDueDate.isAcceptableOrUnknown(
              data['task_due_date']!, _taskDueDateMeta));
    } else if (isInserting) {
      context.missing(_taskDueDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TasksLocal map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TasksLocal(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      taskName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task_name'])!,
      taskStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task_status'])!,
      taskDueDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}task_due_date'])!,
    );
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class TasksLocal extends DataClass implements Insertable<TasksLocal> {
  final int id;
  final String taskName;
  final String taskStatus;
  final String taskDueDate;
  const TasksLocal(
      {required this.id,
      required this.taskName,
      required this.taskStatus,
      required this.taskDueDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['task_name'] = Variable<String>(taskName);
    map['task_status'] = Variable<String>(taskStatus);
    map['task_due_date'] = Variable<String>(taskDueDate);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      taskName: Value(taskName),
      taskStatus: Value(taskStatus),
      taskDueDate: Value(taskDueDate),
    );
  }

  factory TasksLocal.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TasksLocal(
      id: serializer.fromJson<int>(json['id']),
      taskName: serializer.fromJson<String>(json['taskName']),
      taskStatus: serializer.fromJson<String>(json['taskStatus']),
      taskDueDate: serializer.fromJson<String>(json['taskDueDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'taskName': serializer.toJson<String>(taskName),
      'taskStatus': serializer.toJson<String>(taskStatus),
      'taskDueDate': serializer.toJson<String>(taskDueDate),
    };
  }

  TasksLocal copyWith(
          {int? id,
          String? taskName,
          String? taskStatus,
          String? taskDueDate}) =>
      TasksLocal(
        id: id ?? this.id,
        taskName: taskName ?? this.taskName,
        taskStatus: taskStatus ?? this.taskStatus,
        taskDueDate: taskDueDate ?? this.taskDueDate,
      );
  @override
  String toString() {
    return (StringBuffer('TasksLocal(')
          ..write('id: $id, ')
          ..write('taskName: $taskName, ')
          ..write('taskStatus: $taskStatus, ')
          ..write('taskDueDate: $taskDueDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, taskName, taskStatus, taskDueDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TasksLocal &&
          other.id == this.id &&
          other.taskName == this.taskName &&
          other.taskStatus == this.taskStatus &&
          other.taskDueDate == this.taskDueDate);
}

class TasksCompanion extends UpdateCompanion<TasksLocal> {
  final Value<int> id;
  final Value<String> taskName;
  final Value<String> taskStatus;
  final Value<String> taskDueDate;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.taskName = const Value.absent(),
    this.taskStatus = const Value.absent(),
    this.taskDueDate = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String taskName,
    required String taskStatus,
    required String taskDueDate,
  })  : taskName = Value(taskName),
        taskStatus = Value(taskStatus),
        taskDueDate = Value(taskDueDate);
  static Insertable<TasksLocal> custom({
    Expression<int>? id,
    Expression<String>? taskName,
    Expression<String>? taskStatus,
    Expression<String>? taskDueDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (taskName != null) 'task_name': taskName,
      if (taskStatus != null) 'task_status': taskStatus,
      if (taskDueDate != null) 'task_due_date': taskDueDate,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id,
      Value<String>? taskName,
      Value<String>? taskStatus,
      Value<String>? taskDueDate}) {
    return TasksCompanion(
      id: id ?? this.id,
      taskName: taskName ?? this.taskName,
      taskStatus: taskStatus ?? this.taskStatus,
      taskDueDate: taskDueDate ?? this.taskDueDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (taskName.present) {
      map['task_name'] = Variable<String>(taskName.value);
    }
    if (taskStatus.present) {
      map['task_status'] = Variable<String>(taskStatus.value);
    }
    if (taskDueDate.present) {
      map['task_due_date'] = Variable<String>(taskDueDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('taskName: $taskName, ')
          ..write('taskStatus: $taskStatus, ')
          ..write('taskDueDate: $taskDueDate')
          ..write(')'))
        .toString();
  }
}

abstract class _$ValueChainDB extends GeneratedDatabase {
  _$ValueChainDB(QueryExecutor e) : super(e);
  late final $TasksTable tasks = $TasksTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasks];
}
