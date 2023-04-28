import 'package:flutter/material.dart';

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
      height: 60,
      fit: BoxFit.contain,
    );
  }
}
