import "package:flutter/material.dart";
import "package:task_9/core/colors.dart";
import "package:task_9/core/text_styles.dart";

class CustomButton extends StatelessWidget {
  const CustomButton( {
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
  });
  final String text;
  final Function() onPressed;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.btn,
          foregroundColor: AppColors.txt,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )
        ), 
        child: Text(text,
        style: getSmallStyle(fontWeight: FontWeight.w500, fontsize: 16),)),
        );
  }
}

