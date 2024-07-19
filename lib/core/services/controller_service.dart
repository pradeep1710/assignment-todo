import 'package:get/get.dart';

import '../controllers/todo_controller.dart';

class ControllerService {
  const ControllerService._();

  /// INJECT GETXCONRTOLLERS AS DEPENDENCY
  static void init() {
    Get.put(TodoController());
  }
}
