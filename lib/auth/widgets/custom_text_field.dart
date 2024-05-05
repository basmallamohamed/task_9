import "package:flutter/material.dart";
import "package:task_9/core/colors.dart";

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.prefixIcon,
    this.suffixIcon,
    this.suffixOnPressed,
    this.obscureText
  });
  final String label;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final Function()? suffixOnPressed;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        label: Text(label),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.btn),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.btn),
        ),
        suffixIcon: suffixIcon !=null 
        ? IconButton(
          onPressed: suffixOnPressed, 
          icon: Icon(suffixIcon),)
        : const SizedBox(),
      ),
    );
  }
}