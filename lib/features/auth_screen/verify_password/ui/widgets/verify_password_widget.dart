import 'package:car_rental/core/helper/app_assets.dart';
import 'package:car_rental/core/helper/extensions.dart';
import 'package:car_rental/core/routing/routes.dart';
import 'package:car_rental/core/theming/app_colors.dart';
import 'package:car_rental/core/theming/app_font_weight.dart';
import 'package:car_rental/core/theming/app_styles.dart';
import 'package:car_rental/core/widgets/app_text_button.dart';
import 'package:car_rental/core/widgets/app_text_form_field.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VerifyPasswordWidget extends StatefulWidget {
  const VerifyPasswordWidget({super.key});

  @override
  State<VerifyPasswordWidget> createState() => _VerifyPasswordWidgetState();
}

class _VerifyPasswordWidgetState extends State<VerifyPasswordWidget> {
  String dialCode = '+963';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Verify your phone number", style: AppStyles.font30SemiBold),

        16.verticalSpace,
        Text(
          textAlign: TextAlign.center,
          "We have sent you an SMS with a code to number",

          style: AppStyles.font14SemiBold.copyWith(
            color: AppColors.grayMedium,
            fontWeight: AppFontWeight.regular,
          ),
        ),
        40.verticalSpace,
        AppTextFormField(
          hintText: 'Country',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Country';
            }
          },
          // controller: context.read<LoginCubit>().emailController,
          prefixIcon: Row(
            children: [
              CountryCodePicker(
                
                onChanged: (country) {
                  setState(() {
                    dialCode = country.dialCode ?? '++963';
                  });
                },
                initialSelection: 'SY', // الدولة الافتراضية
                favorite: ['+963', 'EG', 'AE'], // دول مفضلة
                // showFlag: true,
                // showDropDownButton: true,
                // alignLeft: false,
                showCountryOnly: true,
             showOnlyCountryWhenClosed: true,
              ),
              Spacer(),
                SvgPicture.asset(AppAssets.selectIcon),
             20.horizontalSpace,
            ],
          ),
        ),

        28.verticalSpace,
        AppTextFormField(
          hintText: 'Phone Number',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Phone Number';
            }
          },
          // controller: context.read<LoginCubit>().emailController,
        ),
        28.verticalSpace,
        AppTextButton(
          onPressed: () {
            context.pushReplacementNamed(Routes.verificationNumber);
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
      ],
    );
  }
}
