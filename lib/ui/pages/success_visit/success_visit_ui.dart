import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessVisitPage extends StatelessWidget {
  const SuccessVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithCross(
        context: context,
        title: '',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset(
            //   "assets/images/success_check.png",
            //   fit: BoxFit.contain,
            //   height: 75,
            // ),
            Lottie.asset(
              'assets/images/success_visit_thumb.json',
              height: 100,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Terima Kasih!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: AppColors.grayscaleTitle,
              ),
            ),
            const SizedBox(height: 8.0),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 48.0,
              ),
              child: Text(
                'Sudah melakukan visit pada jam 08:00 WIB - 17:00 WIB',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w100,
                  height: 1.5,
                  letterSpacing: 0.5,
                  color: AppColors.grayscalePlaceholder,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Selesai',
        onPressed: () {},
      ),
    );
  }
}
