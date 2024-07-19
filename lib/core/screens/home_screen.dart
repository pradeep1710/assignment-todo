import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../common/widgets/page_section.dart';
import '../constants/appcolors.dart';
import '../constants/apptextstyle.dart';
import '../controllers/todo_controller.dart';
import '../utils/kpadding.dart';
import '../widgets/task_tile.dart';
import './add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home-screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // CONTROLLERS
  final todoController = Get.find<TodoController>();

  @override
  void initState() {
    super.initState();
    todoController.fetchTasksFromLocalStorage();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo")),
      body: Padding(
        padding: KPadding.symmetric(context, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageSection(
              child: Obx(() {
                return TableCalendar(
                  availableGestures: AvailableGestures.horizontalSwipe,
                  focusedDay: todoController.currentDate.value,
                  currentDay: todoController.currentDate.value,
                  firstDay: DateTime(2000),
                  lastDay: DateTime.now().add(const Duration(days: 3650)),
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    headerPadding: KPadding.only(context, bottom: 8),
                  ),
                  calendarFormat: CalendarFormat.week,
                  onDaySelected: (selectedDay, focusedDay) {
                    todoController.currentDate.value = selectedDay;
                  },
                  calendarStyle: const CalendarStyle(
                    defaultTextStyle: AppTextStyle.b14,
                    disabledTextStyle: AppTextStyle.b14textGrey,
                    outsideTextStyle: AppTextStyle.b14,
                    weekendTextStyle: AppTextStyle.b14,
                    todayDecoration: BoxDecoration(
                      color: AppColors.accent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  daysOfWeekStyle: const DaysOfWeekStyle(
                      weekdayStyle: AppTextStyle.b12textGrey,
                      weekendStyle: AppTextStyle.b12accent),
                );
              }),
            ),
            Expanded(child: Obx(() {
              final filteredList = todoController.filterCompletedTask();
              final pendingTaskList = filteredList.$1;
              final completedTaskList = filteredList.$2;
              if (pendingTaskList.isEmpty && completedTaskList.isEmpty) {
                final currentDate = todoController.currentDate.value;
                return Center(
                  child: (currentDate.isBefore(DateTime.now()))
                      ? Text(
                          "No Task was created on ${DateFormat("dd MMM yyyy").format(currentDate)}",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.b18)
                      : const Text(
                          "Create a todo to manage your task efficiently",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.b18),
                );
              }
              return ListView(
                children: [
                  if (pendingTaskList.isNotEmpty)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Pending", style: AppTextStyle.b20),
                        const SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: pendingTaskList.length,
                          itemBuilder: (context, index) =>
                              TaskTile(pendingTaskList[index]),
                        ),
                      ],
                    ),
                  if (completedTaskList.isNotEmpty)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Completed", style: AppTextStyle.b20),
                        const SizedBox(height: 10),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: completedTaskList.length,
                          itemBuilder: (context, index) =>
                              TaskTile(completedTaskList[index]),
                        ),
                      ],
                    ),
                ],
              );
            }))
          ],
        ),
      ),
      floatingActionButton: Obx(() {
        return AnimatedScale(
          scale: (todoController.currentDate.value.isBefore(DateTime.now()))
              ? 0
              : 1,
          duration: const Duration(milliseconds: 200),
          child: FloatingActionButton(
            onPressed: () => Get.toNamed(AddTaskScreen.routeName),
            child: const Icon(Icons.edit_rounded),
          ),
        );
      }),
    );
  }
}
