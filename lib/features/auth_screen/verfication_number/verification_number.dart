import 'package:car_rental/core/helper/app_assets.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/widgets/dont_have_account.dart';
import 'package:car_rental/features/auth_screen/verfication_number/ui/widgets/verification_numberw_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationNumber extends StatelessWidget {
  const VerificationNumber({super.key});

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
            VerificationNumberWidget(),
            24.verticalSpace,
              Center(
                child: AreHaveAccountText(
                  onTap: () {
                    context.pushReplacementNamed(Routes.loginScreen);
                  },
                  titleText1: "Didn’t receive the OTP?",
                  titleText2: "Resend.",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}