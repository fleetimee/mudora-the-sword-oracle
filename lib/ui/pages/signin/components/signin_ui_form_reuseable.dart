import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPageForm extends StatelessWidget {
  const LoginPageForm({
    super.key,
    required this.name,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.validator,
  });

  final String name;
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      obscureText: obscureText ?? false,
      validator: validator,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: AppColors.grayscalePlaceholder,
        ),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.grayscalePlaceholder,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: AppColors.primaryBlue,
          ),
        ),
        contentPadding: const EdgeInsets.all(16.0),
      ),
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
