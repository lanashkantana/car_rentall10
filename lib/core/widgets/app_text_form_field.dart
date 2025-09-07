
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Function(String?) validator;
  final TextEditingController? controller;
  final  Widget? prefixIcon;
 

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.errorBorder,
    this.focusedErrorBorder,
    required this.validator,
    this.controller, 
     this.prefixIcon
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: prefixIcon??SizedBox.shrink(),
        
        fillColor: AppColors.white,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        errorBorder: errorBorder ?? outlineInputBorder(color: Colors.red),
        focusedErrorBorder:
            focusedErrorBorder ?? outlineInputBorder(color: AppColors.bluePrimary),
        focusedBorder:
            focusedBorder ?? outlineInputBorder(color: AppColors.grayDark),
        enabledBorder:
            enabledBorder ?? outlineInputBorder(color: AppColors.grayDark),
        hintStyle: hintStyle ?? AppStyles.font14Light.copyWith(fontWeight: AppFontWeight.regular),
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      
      
      obscureText: isObscureText ?? false,

      style:
          inputTextStyle ??
       AppStyles.font14Light.copyWith(fontWeight: AppFontWeight.regular,
            color: AppColors.bluePrimary,
          ),
    
      validator: (value) {
        return validator(value);
      },
    );
  }

  OutlineInputBorder outlineInputBorder({required final Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 1.3),
      borderRadius: BorderRadius.circular(16.0),
    );
  }
}
