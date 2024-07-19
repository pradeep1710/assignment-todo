import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/appcolors.dart';
import '../../constants/apptextstyle.dart';

void showSnackbar(String content) {
  Get.showSnackbar(GetSnackBar(
    maxWidth: 500,
    snackStyle: SnackStyle.FLOATING,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: AppColors.swatch,
    duration: const Duration(seconds: 2),
    messageText: Text(content, style: AppTextStyle.b12white),
  ));
}
