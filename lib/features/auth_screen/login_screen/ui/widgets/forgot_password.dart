import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return     Row(
                      children: [
                        Row(children: [IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.verified),
                        ),
                        Text(
                          "Remember Me",
                          style: AppStyles.font14Light.copyWith(
                            fontWeight: AppFontWeight.regular,
                            color: AppColors.grayDark,
                          ),
                        ),],),
                       
                 
                   
                    Spacer(),
                    GestureDetector(
                      onTap: (){
                        context.pushReplacementNamed(Routes.resetPassword);
                      },
                      child: Text(
                        "Forgot Password",
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