import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:car_rental/core/widgets/app_text_button.dart';
import 'package:car_rental/features/auth_screen/verfication_number/ui/widgets/pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationNumberWidget extends StatelessWidget {
  const VerificationNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Enter verification code", style: AppStyles.font30SemiBold),

        16.verticalSpace,
        Text(
          "We have send a Code to : +100******00",

          style: AppStyles.font18SemiBold.copyWith(
            color: AppColors.grayMedium,
            fontWeight: AppFontWeight.regular,
          ),
        ),
        40.verticalSpace,
        PinCodeTextFieldd(),

        28.verticalSpace,
        AppTextButton(
          onPressed: () {
            // context.pushReplacementNamed(Routes.home);
          },
          child: Text(
            "Continue",
            style: AppStyles.font18SemiBold.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
