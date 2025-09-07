import 'package:car_rental/core/helper/app_assets.dart';
import 'package:car_rental/features/auth_screen/verify_password/ui/widgets/verify_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyPassword extends StatelessWidget {
  const VerifyPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              20.verticalSpace,
              Image.asset(AppAssets.quentCar, height: 36.h),
              206.verticalSpace,
            VerifyPasswordWidget(),
          
          
            ],
          ),
        ),
      ),
    );
  }
}