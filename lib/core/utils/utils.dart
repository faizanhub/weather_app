import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_techidaara/constants/colors.dart';

class Utils {
  static showFlushBar(BuildContext context, String title, String message) {
    return Flushbar(
      // title: title,
      message: message,
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.BOTTOM,
      margin: const EdgeInsets.all(17),
      backgroundColor: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(10),
    ).show(context);
  }
}
