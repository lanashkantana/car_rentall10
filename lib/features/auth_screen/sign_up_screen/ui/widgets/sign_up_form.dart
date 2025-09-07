import 'package:car_rental/core/helper/app_regex.dart';
import 'package:car_rental/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Full Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid full Name';
              }
            },
            // controller: context.read<LoginCubit>().emailController,
          ),
          18.verticalSpace,
          AppTextFormField(
            hintText: 'Email Address',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            // controller: context.read<LoginCubit>().emailController,
          ),
          18.verticalSpace,
          AppTextFormField(
            // controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          18.verticalSpace,
          AppTextFormField(
            // controller: context.read<LoginCubit>().passwordController,
            hintText: 'Country',

            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Country';
              }
            },
          ),
        ],
      ),
    );
  }
}
