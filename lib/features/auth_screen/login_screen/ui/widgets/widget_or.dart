
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:flutter/material.dart';

class WidgetOr extends StatelessWidget {
  const WidgetOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: AppColors.oGray,
            thickness: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            "   Or   ",
            style: AppStyles.font14Light.copyWith(
              fontWeight: AppFontWeight.regular,
              color: AppColors.grayMedium,
              
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.oGray,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
