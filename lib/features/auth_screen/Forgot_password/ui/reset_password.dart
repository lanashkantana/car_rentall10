import 'package:car_rental/core/helper/app_assets.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/features/auth_screen/Forgot_password/ui/widgets/reset_password_widget.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/widgets/dont_have_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              20.verticalSpace,
              Image.asset(AppAssets.quentCar, height: 36.h),
              206.verticalSpace,
            ResetPasswordWidget(),
              Spacer(),
              Center(
                child: AreHaveAccountText(
                  onTap: () {
                    context.pushReplacementNamed(Routes.verifyPassword);
                  },
                  titleText1: "Create a ",
                  titleText2: "New account",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
