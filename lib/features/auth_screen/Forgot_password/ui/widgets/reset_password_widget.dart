import 'package:car_rental/core/helper/app_regex.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:car_rental/core/widgets/app_text_button.dart';
import 'package:car_rental/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordWidget extends StatelessWidget {
  const ResetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      
         Text("Reset your password", style: AppStyles.font30SemiBold),
       
        16.verticalSpace,
        Text(
          textAlign: TextAlign.center,
          "Enter the email address associated with your account and we'll send you a link to reset your password. ",

          style: AppStyles.font14SemiBold.copyWith(
            color: AppColors.grayMedium,
            fontWeight: AppFontWeight.regular,
          ),
        ),
        40.verticalSpace,
        AppTextFormField(
          hintText: 'Email',
          validator: (value) {
            if (value == null ||
                value.isEmpty ||
                !AppRegex.isEmailValid(value)) {
              return 'Please enter a valid email';
            }
          },
          // controller: context.read<LoginCubit>().emailController,
        ),
        28.verticalSpace,
        AppTextButton(
          onPressed: () {
            context.pushReplacementNamed(Routes.verifyPassword);
          },
          child: Text(
            "Continue",
            style: AppStyles.font18SemiBold.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
        28.verticalSpace,
        GestureDetector(
          onTap: () {
            context.pushReplacementNamed(Routes.loginScreen);
          },
          child: Text(
            "Return to sing in",
            style: AppStyles.font14Light.copyWith(
              fontWeight: AppFontWeight.regular,
              color: AppColors.primart,
            ),
          ),
        ),
      ],
    );
  }
}
