import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:flutter/material.dart';

class NoConnectionPage extends StatelessWidget {
  static const routeName = '/no_connection';

  const NoConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/no_connection_illustration.png",
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16.0),
            const Text(
              StringConstant.noConnectionTitle,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
                color: AppColors.grayscaleTitle,
              ),
            ),
            const SizedBox(height: 8.0),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.0,
              ),
              child: Text(
                StringConstant.noConnectionDescription,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  letterSpacing: 0.5,
                  color: AppColors.grayscalePlaceholder,
                ),
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBarButton(
        title: StringConstant.noConnectionButton,
        onPressed: () {},
      ),
    );
  }
}
