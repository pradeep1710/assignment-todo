import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../common/widgets/page_section.dart';
import '../constants/appcolors.dart';
import '../constants/apptextstyle.dart';
import '../controllers/todo_controller.dart';
import '../models/task_model.dart';
import '../utils/kpadding.dart';

class AddTaskScreen extends StatefulWidget {
  static const String routeName = "/add-task-screen";
  final TaskModel? task;
  const AddTaskScreen({super.key, this.task});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  // CONTROLLERS
  final todoController = Get.find<TodoController>();

  // GLOBAL KEY TO ACCESS CURRENT STATE OF FORM
  final formKey = GlobalKey<FormState>();

  // INPUT CONTROLLERS
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  String? onValidate(String? value, String errorMsg) {
    if (value == null || value.isEmpty) {
      return errorMsg;
    } else {
      return null;
    }
  }

  // SAVE OR TRIGGER VALIDATION ERROR
  void onSave() {
    if (formKey.currentState!.validate()) {
      final uniqueId = const Uuid().v1();
      final date = todoController.currentDate.value;
      final task = TaskModel(
          id: widget.task?.id ?? uniqueId,
          title: titleController.text.trim(),
          description: descriptionController.text.trim(),
          date: widget.task?.date ?? date,
          isCompleted: widget.task?.isCompleted ?? false);
      if (widget.task != null) {
        todoController.updateTask(task);
      } else {
        todoController.saveTask(task);
      }
      Get.back();
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.task != null) {
      titleController.text = widget.task!.title;
      descriptionController.text = widget.task!.description;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Task")),
      body: Form(
        key: formKey,
        child: Padding(
          padding: KPadding.symmetric(context, horizontal: 15),
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Title", style: AppTextStyle.b14),
                  const SizedBox(height: 3),
                  PageSection(
                    child: TextFormField(
                      autofocus: widget.task == null,
                      textInputAction: TextInputAction.next,
                      controller: titleController,
                      textCapitalization: TextCapitalization.words,
                      decoration: const InputDecoration(
                          isDense: true,
                          border: InputBorder.none,
                          hintText: "Title"),
                      validator: (value) =>
                          onValidate(value, "Please Enter Title"),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Description", style: AppTextStyle.b14),
                    const SizedBox(height: 3),
                    Expanded(
                      child: PageSection(
                        child: TextFormField(
                          controller: descriptionController,
                          textCapitalization: TextCapitalization.sentences,
                          maxLines: null,
                          decoration: const InputDecoration(
                              isDense: true,
                              border: InputBorder.none,
                              hintText: "Description"),
                          validator: (value) => onValidate(
                              value, "Enter brief description about task"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                height: 45,
                child: ElevatedButton(
                    onPressed: onSave,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.accent),
                    child: const Text(
                      "Save",
                      style: AppTextStyle.b14white,
                    )),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
