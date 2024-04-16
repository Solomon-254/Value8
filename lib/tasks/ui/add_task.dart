
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:value_8_project/tasks/bloc/task_bloc.dart';
import 'package:value_8_project/tasks/common/utils/extensions.dart';
import 'package:value_8_project/tasks/common/utils/logger.dart';
import 'package:value_8_project/tasks/db/database.dart';
import 'package:value_8_project/tasks/ui/home.dart';
import 'package:value_8_project/tasks/ui/widgets/appbar.dart';
import 'package:value_8_project/tasks/ui/widgets/custom_button.dart';
import 'package:value_8_project/tasks/ui/widgets/custom_textfield.dart';
import 'package:value_8_project/tasks/ui/widgets/form_label.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';




class NewTaskScreenView extends StatefulWidget {
  const NewTaskScreenView({super.key});

  @override
  State<NewTaskScreenView> createState() => _NewTaskScreenViewState();
}

class _NewTaskScreenViewState extends State<NewTaskScreenView> {
  bool isLoading = false;
  List<TasksLocal> tasks = [];

  final TextEditingController _taskDateController = TextEditingController();
    late TaskBloc _bloc;

  var taskName = "";
  bool isTaskNameInvalid = false;

  var taskStatus = "";
  bool isTasjStatusInvalid = false;

  DateTime? taskDate;
  bool isTaskDateInvalid = false;

  var defaultDate;

  @override
  void initState() {
    super.initState();
    final getIt = GetIt.instance;
    _bloc = getIt<TaskBloc>();
    defaultDate =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
        taskStatus = "0.0";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppBar(title: 'Add New Task'),
      body: BlocConsumer<TaskBloc, TaskState>(
        bloc: _bloc,
        listener: (context, state) {
          _updateStates(state,context);
        },
        builder: (context, state) {
          return  Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
               Column(
                children: [
                const  FormLabel(text: 'Task Name'),
                  CustomField(
                    onTextChange: _updateTaskName,
                    hintText: 'Enter task name',
                    errorText:  isTaskNameInvalid
                              ? "please select a valid task name"
                              : null,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
               Column(
                children: [
                const  FormLabel(text: 'Task Status'),
                  CustomField(
                    onTextChange: _updateTaskStatus,
                    hintText: 'enter task status(0.1 to 1.0)',
                    keyboardType: TextInputType.number,
                    errorText:  isTasjStatusInvalid
                              ? "please select a valid task status"
                              : null,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () => _selectStartDate(context),
                child: AbsorbPointer(
                  child: Column(
                    children: [
                      const FormLabel(text: "START DATE"),
                      const SizedBox(height: 5.0),
                      CustomField(
                          controller:
                              _taskDateController, // Use the TextEditingController here
                          keyboardType: TextInputType.datetime,
                          errorText: isTaskDateInvalid
                              ? "please select a valid start date"
                              : null,
                          hintText: "YYYY-MM-DD"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                label: 'Save',
                showLoading: isLoading,
                onClick: _saveTask,
              )
            ],
          ),
        );
          
        },
       
      ),
    );
  }

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: taskDate ??
          DateTime
              .now(), // Use _startDate if available, otherwise use DateTime.now()
      firstDate: DateTime(1900),
      lastDate: DateTime(3025),
    );

    if (selectedDate != null) {
      setState(() {
        taskDate = selectedDate;
        _taskDateController.text = formatDate(
            selectedDate); // Update the text field with the selected date
      });
    } else {
      setState(() {
        taskDate = DateTime.now();
        _taskDateController.text = formatDate(
            DateTime.now()); // Update the text field with the current date
      });
    }
  }

  String formatDate(DateTime date) {
    String formattedDate =
        "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
    return formattedDate;
  }
  
  
  void _updateStates(TaskState state, BuildContext context) {
    logger.i("Received State: $state");
    setState(() {
      if (state is TaskDetailsInvalid) {
        isTaskNameInvalid = state.error
            .contains(TaskDetailsValidationError.taskNameInvalid);
        isTasjStatusInvalid = state.error
            .contains(TaskDetailsValidationError.taskStatusInvalid);
        isTaskDateInvalid = state.error
            .contains(TaskDetailsValidationError.taskExpiryDateInvalid);
      }
    });
    if (state is TaskSavingState) {
      setState(() {
        isLoading = true;
      });
    } else if (state is TaskSaveSuccessState) {
      tasks = state.tasks;
      _navigateTHomePage();
    } else if (state is TaskDetailsSaveFailureState) {
      showSnackbar(context, 'Something went wrong, please try again');
    }
  }

  void _navigateTHomePage() {
    logger.i("Navigating to Tasks");

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  HomePage(tasks: tasks,)),
    );
  }

   void _saveTask() {
    logger.i("Saving Task...");
    dismissKeyboard();
      final event = SaveTaskEvent(
       taskName, double.parse(taskStatus), taskDate ?? defaultDate
      );

      _bloc.add(event);
    }
 

  _updateTaskName(String value) {
    setState(() {
      taskName = value;
    });
  }

  _updateTaskStatus(String value) {
    setState(() {
      taskStatus = value;
    });
  }
  }


