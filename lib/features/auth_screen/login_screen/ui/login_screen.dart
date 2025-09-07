import 'package:car_rental/core/helper/app_assets.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:car_rental/core/widgets/app_text_button.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/widgets/dont_have_account.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/widgets/email_and_password.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/widgets/forgot_password.dart';
import 'package:car_rental/features/auth_screen/login_screen/ui/widgets/widget_or.dart';
import 'package:car_rental/features/auth_screen/sign_up_screen/ui/widgets/social_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          //هذا يخلي ال شاشة لو كان كحتولى مو كافي يعمل سكرول
          //   physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.verticalSpace,
                Image.asset(AppAssets.quentCar, height: 36.h),
                50.verticalSpace,
                Text(
                  "Welcome Back\nReady to hit the road.",
                  style: AppStyles.font30SemiBold,
                ),
                40.verticalSpace,
                EmailAndPassword(),
                28.verticalSpace,

                ForgotPassword(),
                28.verticalSpace,
                AppTextButton(
                  onPressed: () {
                    context.pushReplacementNamed(Routes.signUpScreen);
                  },
                  child: Text(
                    "Sing up",
                    style: AppStyles.font18SemiBold.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),
                ),
                18.verticalSpace,
                AppTextButton(
                  backgroundColor: AppColors.grayLight,
                  borderColor: AppColors.primart,

                  onPressed: () {},
                  child: Text(
                    "Login",

                    style: AppStyles.font18SemiBold.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ),
                28.verticalSpace,
                WidgetOr(),

                27.verticalSpace,
                SocialAuth(),
                50.verticalSpace,
                Center(
                  child: AreHaveAccountText(
                    onTap: () {
                      context.pushReplacementNamed(Routes.signUpScreen);
                    },
                    titleText1: 'Dont Have an account',
                    titleText2: 'Sign Up.',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
