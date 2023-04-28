import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login-page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FormBuilderTextField(
                            name: 'username',
                            decoration: InputDecoration(
                              hintText: StringConstant.loginUsernameHint,
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
                          ),
                          const SizedBox(height: 16.0),
                          FormBuilderTextField(
                            name: 'password',
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: StringConstant.loginPasswordHint,
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Expanded(
                        //   child: FormBuilder(
                        //     child: FormBuilderCheckbox(
                        //       name: 'remember_me',
                        //       controlAffinity: ListTileControlAffinity.leading,
                        //       decoration: const InputDecoration(
                        //         contentPadding: EdgeInsets.zero,
                        //         border: InputBorder.none,
                        //         alignLabelWithHint: true,
                        //       ),
                        //       // activeColor: AppColors.primaryBlue,
                        //       title: const Text(
                        //         StringConstant.rememberMe,
                        //         style: TextStyle(
                        //           fontSize: 16.0,
                        //           fontWeight: FontWeight.w400,
                        //           color: AppColors.grayscalePlaceholder,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Row(
                          children: [
                            Checkbox(
                              value: _rememberMe,
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
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 48.0,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  StringConstant.loginButton,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: BoxFit.contain,
    );
  }
}
