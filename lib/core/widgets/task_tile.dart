import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo/core/common/widgets/page_section.dart';
import 'package:todo/core/constants/appcolors.dart';
import 'package:todo/core/constants/apptextstyle.dart';
import 'package:todo/core/controllers/todo_controller.dart';
import 'package:todo/core/models/task_model.dart';
import 'package:todo/core/screens/add_task_screen.dart';
import 'package:todo/core/utils/adaptive_screen.dart';
import 'package:todo/core/utils/kborder.dart';
import 'package:todo/core/utils/kpadding.dart';

class TaskTile extends StatefulWidget {
  final TaskModel task;
  const TaskTile(this.task, {super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  // CONTROLLERS
  final todoController = Get.find<TodoController>();

  // SHOW DIALOG TO EDIT, DELETE OR CHANGE STATUS
  onTileSelect() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: KPadding.symmetric(context, horizontal: 15),
          shape: KBoarder.roundedRectBorder(),
          child: SizedBox(
            height: dynamicHeight(context, 400),
            child: PageSection(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(widget.task.title,
                                  style: AppTextStyle.b18),
                            ),
                            const SizedBox(width: 5),
                            InkWell(
                              onTap: () => Get.toNamed(
                                AddTaskScreen.routeName,
                                arguments: widget.task,
                              ),
                              child: const Icon(Icons.edit, size: 20),
                            )
                          ],
                        ),
                        const Divider(),
                        Text(widget.task.description, style: AppTextStyle.r16)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: ElevatedButton(
                          onPressed: () {
                            todoController.removeTask(widget.task);
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: KBoarder.roundedRectBorder(),
                            backgroundColor: AppColors.accent,
                          ),
                          child: const Text("Remove",
                              style: AppTextStyle.b14white),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {
                            if (widget.task.isCompleted) {
                              todoController.updateTask(
                                  widget.task.copyWith(isCompleted: false));
                            } else {
                              todoController.updateTask(
                                  widget.task.copyWith(isCompleted: true));
                            }
                            Get.back();
                          },
                          style: ElevatedButton.styleFrom(
                            shape: KBoarder.roundedRectBorder(),
                            backgroundColor: AppColors.swatch,
                          ),
                          child: widget.task.isCompleted
                              ? const Text("Mark Pending",
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.b14white)
                              : const Text("Mark Complete",
                                  textAlign: TextAlign.center,
                                  style: AppTextStyle.b14white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTileSelect,
      child: PageSection(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(widget.task.title, style: AppTextStyle.b15)),
                const SizedBox(width: 5),
                const Icon(CupertinoIcons.forward, size: 15)
              ],
            ),
            const SizedBox(height: 5),
            Text(
              widget.task.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: AppTextStyle.b12textGrey,
            )
          ],
        ),
      ),
    );
  }
}
