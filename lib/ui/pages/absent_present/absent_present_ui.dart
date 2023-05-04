import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';

class AbsentPresentPage extends StatelessWidget {
  const AbsentPresentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBack(
        title: StringConstant.mapsPresenceTitle,
      ),
      body: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FleetimeCustomAsteriskText(
                  name: StringConstant.mapsPresenceFaceId,
                ),
                const SizedBox(height: 8.0),
                const Text(
                  StringConstant.mapsPresenceFaceIdHint,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.grayscaleLabel,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 16.0),
                Center(
                  child: Image.asset(
                    'assets/images/maps_present_avatar.png',
                    fit: BoxFit.contain,
                    height: 125,
                  ),
                ),
                const SizedBox(height: 32.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const FleetimeCustomAsteriskText(
                      name: StringConstant.mapsPresenceLocation,
                    ),
                    const SizedBox(width: 8.0),
                    Image.asset(
                      'assets/images/maps_present_refresh.png',
                      fit: BoxFit.contain,
                      height: 20,
                    )
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  StringConstant.mapsPresenceLocationHint,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.grayscaleLabel,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 32.0),
                const FleetimeCustomAsteriskText(
                  name: StringConstant.mapsPresenceSelfie,
                ),
                const SizedBox(height: 8.0),
                const Text(
                  StringConstant.mapsPresenceSelfieHint,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.grayscaleLabel,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  '*): ${StringConstant.mapsPresenceWarning}',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: AppColors.stateErrorBase,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 16.0),
                const FleetimeImagePickerReuseable(name: 'Selfie'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FleetimeCustomAsteriskText extends StatelessWidget {
  const FleetimeCustomAsteriskText({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 3.0),
        // Make a required asterisk with red color text
        const Text(
          '*',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
