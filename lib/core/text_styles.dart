import 'package:flutter/material.dart';
import 'package:task_9/core/colors.dart';

TextStyle getTitleStyle({double? fontsize, FontWeight? fontWeight, Color? color}){
  return TextStyle(fontSize: fontsize ,
                   fontWeight: fontWeight ?? FontWeight.bold ,
                   color: color ?? AppColors.white);
}
TextStyle getSmallStyle({double? fontsize, FontWeight? fontWeight, Color? color}){
  return TextStyle(fontSize: fontsize ?? 15,
                   fontWeight: fontWeight ?? FontWeight.normal ,
                   color: color ?? AppColors.white, 
  );
}