import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SalaryDetailPage extends StatelessWidget {
  const SalaryDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayscaleBackground,
      appBar: AppBarWithCross(
        context: context,
        title: 'Detail Gaji',
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          // Icon b
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/detail_gaji_share.png',
              fit: BoxFit.contain,
              height: 24.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: double.infinity - 32.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 5.0,
                offset: Offset(0.0, 0.0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Lottie.asset(
                'assets/images/salary_detail_success.zip',
                fit: BoxFit.contain,
                height: 80,
              ),
              const Text(
                'Pembayaran Berhasil!',
                style: TextStyle(
                  color: AppColors.stateSuccessBase,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Rp 5.300.000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.grayscaleTitle,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'ID : ',
                  style: TextStyle(
                    color: AppColors.grayscaleLabel,
                    fontSize: 11.0,
                  ),
                  children: [
                    TextSpan(
                      text: '20220717072145zEwdw8U01t',
                      style: TextStyle(
                        color: AppColors.primaryBlue,
                        fontSize: 11.0,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Colors.black12,
                      thickness: 0.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Waktu Pengiriman',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '31 Maret 2021, 12:00',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Pengirim',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          'Novian Andika',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Bank',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          'Bank Central Asia',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4.0),
                    Divider(
                      color: Colors.black12,
                      thickness: 0.5,
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Detail Lainnya',
                      style: TextStyle(
                        color: AppColors.grayscaleTitle,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Gaji Pokok',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '3.000.000',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kehadiran',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '100%',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tunjangan',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '2.000.000',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BPJS Kesehatan',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '350.000',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'BP Jamsostek',
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 14.0,
                          ),
                        ),
                        Text(
                          '150.000',
                          style: TextStyle(
                            color: AppColors.grayscaleTitle,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Kembali',
        onPressed: () {},
      ),
    );
  }
}
