import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/pages/signin/components/signin_ui_company_logo.dart';
import 'package:fleetime_hris/ui/pages/signin/components/signin_ui_form_reuseable.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login-page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  bool _togglePassword = true;

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: CompanyLogo(
                      imagePath: "assets/images/login_company_logo.png",
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/images/login_illustration.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        StringConstant.loginTitle,
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryBlue,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        StringConstant.loginDescription,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.grayscalePlaceholder,
                        ),
                      ),
                      const SizedBox(height: 32.0),
                      FormBuilder(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LoginPageForm(
                              name: 'username',
                              validator: FormBuilderValidators.required(),
                              hintText: StringConstant.loginUsernameHint,
                            ),
                            const SizedBox(height: 16.0),
                            LoginPageForm(
                              name: 'password',
                              hintText: StringConstant.loginPasswordHint,
                              validator: FormBuilderValidators.required(),
                              obscureText: _togglePassword,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _togglePassword = !_togglePassword;
                                  });
                                },
                                icon: Icon(
                                  _togglePassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: AppColors.grayscalePlaceholder,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _rememberMe,
                                fillColor: MaterialStateProperty.all<Color>(
                                  AppColors.grayscalePlaceholder,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2.0),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _rememberMe = value!;
                                  });
                                },
                              ),
                              const Text(
                                StringConstant.rememberMe,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grayscalePlaceholder,
                                ),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              StringConstant.forgotPassword,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.primaryBlue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: StringConstant.loginButton,
        onPressed: () {
          if (_formKey.currentState?.saveAndValidate() ?? false) {
            debugPrint(_formKey.currentState?.value.toString());

            Navigator.pushNamed(context, '/home_page');
          } else {
            debugPrint(_formKey.currentState?.value.toString());
            debugPrint('validation failed');
          }
        },
      ),
    );
  }
}
