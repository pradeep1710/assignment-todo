import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../common/functions/show_snackbar.dart';
import '../enums/storage_box_enum.dart';
import '../models/task_model.dart';
import '../services/storage_service.dart';

class TodoController extends GetxController {
  // DEPENDENCIES
  final storage = StorageService.instance;

  // LISTENABLE
  final taskList = Rx<List<TaskModel>>([]);

  // CURRENT DATE SELECTED TO SHOW ALL TODOs
  final currentDate = Rx<DateTime>(DateTime.now());

  // GET ALL TASKS FROM LOCAL STORAGE
  void fetchTasksFromLocalStorage() {
    try {
      final data =
          storage.getData(StorageDataKeyEnum.todoList) as List<dynamic>?;
      if (data != null) {
        taskList.value = data
            .map((each) => TaskModel.fromMap(Map<String, dynamic>.from(each)))
            .toList();

        log(data.toString());
        log(taskList.value.toString());
      } else {
        throw Exception("no todo list found");
      }
    } catch (error) {
      log(error.toString());
    }
  }

  // SAVE TASK AND UPDATE IT TO STORAGE
  Future saveTask(TaskModel task) async {
    try {
      taskList.update(
        (oldState) {
          oldState?.add(task);
        },
      );
      await storage.setData(
        StorageDataKeyEnum.todoList,
        taskList.value.map((each) => each.toMap()).toList(),
      );

      log("task saved");
    } catch (error) {
      log(error.toString());
      showSnackbar("Failed to save task");
    }
  }

  // UPDATE TASK AND UPDATE IT TO STORAGE
  Future updateTask(TaskModel task) async {
    try {
      taskList.update(
        (oldState) {
          final index =
              oldState!.indexWhere((element) => element.id == task.id);
          oldState.removeAt(index);
          oldState.insert(index, task);
        },
      );
      await storage.setData(
        StorageDataKeyEnum.todoList,
        taskList.value.map((each) => each.toMap()).toList(),
      );
    } catch (error) {
      log(error.toString());
      showSnackbar("Failed to save task");
    }
  }

  // REMOVE TASK AND UPDATE IT TO STORAGE
  Future removeTask(TaskModel task) async {
    try {
      taskList.update(
        (oldState) {
          oldState?.remove(task);
        },
      );
      await storage.setData(
        StorageDataKeyEnum.todoList,
        jsonEncode(taskList.value),
      );
    } catch (error) {
      log(error.toString());
      showSnackbar("Failed to remove task");
    }
  }

// RETURN TUPLE OF LISTS,
// $1 : PENDING TASKS
// $2 : COMPLETED tASKS
  (List<TaskModel>, List<TaskModel>) filterCompletedTask() {
    final currentDateTaskList = taskList.value.where((element) =>
        DateFormat("ddMMMyyyy").format(element.date) ==
        DateFormat("ddMMMyyyy").format(currentDate.value));
    log(currentDateTaskList.length.toString());
    final pendingTaskList =
        currentDateTaskList.where((element) => !element.isCompleted).toList();
    final completedTaskList =
        currentDateTaskList.where((element) => element.isCompleted).toList();

    return (pendingTaskList, completedTaskList);
  }
}
