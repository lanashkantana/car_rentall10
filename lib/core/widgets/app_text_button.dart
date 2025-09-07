
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AppTextButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonWidth;
  final double? buttonHeight;
  final Color? borderColor;


  final VoidCallback onPressed;
  final Widget child;
  const AppTextButton({
    super.key,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.buttonHeight,
    this.buttonWidth,
  
    required this.onPressed,
    required this.child,
      this.borderColor
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          
          RoundedRectangleBorder(
          
            borderRadius: BorderRadius.circular(borderRadius ?? 62.0),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
            ),

          
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? AppColors.darkCoal,
        ),
        // padding: WidgetStateProperty.all<EdgeInsets>(
        //   EdgeInsets.symmetric(
        //     horizontal: horizontalPadding ?? 148.w,
        //     vertical: verticalPadding ?? 21.h,
        //   ),
        // ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth ?? double.maxFinite, buttonHeight ?? 62.h),
        ),
      ),
      onPressed: onPressed,
      child: child
    );
  }
}