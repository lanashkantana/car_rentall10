import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class PinCodeTextFieldd extends StatelessWidget {
  const PinCodeTextFieldd({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
  appContext: context,
  length: 4,
  onChanged: (value) {
    // print(value);
  },
  onCompleted: (value) {
    // print("Completed: $value");
  },
  cursorColor: Colors.black,
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.box, // يحوله من خط إلى مربع
    borderRadius: BorderRadius.circular(10), // radius = 10
    fieldHeight: 63.h,
    fieldWidth: 76.w,
    activeFillColor: Colors.white, // لون الخلفية
    inactiveFillColor: Colors.white,
    selectedFillColor: Colors.white,
    activeColor: Colors.grey,   
    inactiveColor: Colors.grey,  
    selectedColor: Colors.blue,   
  ),
  enableActiveFill: true, // مهم عشان يظهر الخلفية
);

  }
}