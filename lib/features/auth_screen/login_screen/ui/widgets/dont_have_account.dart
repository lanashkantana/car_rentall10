import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class AreHaveAccountText extends StatelessWidget {
  final VoidCallback onTap;
  final String titleText1;
  final String titleText2;
  const AreHaveAccountText({super.key,required this.onTap, required this.titleText1, required this.titleText2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: titleText1,
            style: AppStyles.font14Light.copyWith(fontWeight: AppFontWeight.regular,color: AppColors.grayMedium),
          ),
          TextSpan(text:titleText2,
              style: AppStyles.font14Light.copyWith(fontWeight: AppFontWeight.regular,color: AppColors.primart),
          
           recognizer: TapGestureRecognizer()
              ..onTap =onTap
               
            
          ),
        ],
      ),
    );
  }
}
