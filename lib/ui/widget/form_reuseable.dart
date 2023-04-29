import 'package:dotted_border/dotted_border.dart';
import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/ui/widget/form_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class FleetimeDatePickerReuseable extends StatelessWidget {
  const FleetimeDatePickerReuseable({
    super.key,
    required this.name,
    this.onChanged,
    this.onSaved,
    this.validator,
  });

  final String name;
  final void Function(dynamic)? onChanged;
  final void Function(dynamic)? onSaved;
  final String? Function(dynamic)? validator;

  @override
  Widget build(BuildContext context) {
    return FleetimeDatePicker(
      name: name,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        filled: false,
        hintText: 'Tes',
        hintStyle: const TextStyle(
          color: Colors.red,
          fontSize: 20,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/clock.png',
            fit: BoxFit.cover,
            height: 2,
          ),
        ),
        alignLabelWithHint: true,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.grayscalePlaceholder,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.stateErrorBase,
          ),
        ),
      ),
    );
  }
}

class FleetimeImagePickerReuseable extends StatelessWidget {
  const FleetimeImagePickerReuseable({
    super.key,
    required this.name,
    this.validator,
  });

  final String name;
  final String? Function(dynamic)? validator;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      radius: const Radius.circular(20),
      strokeWidth: 1,
      color: AppColors.grayscaleLabel,
      strokeCap: StrokeCap.butt,
      dashPattern: const [8, 4],
      borderType: BorderType.RRect,
      child: FormBuilderImagePicker(
        name: name,
        maxImages: 1,
        validator: validator,
        cameraLabel: const Text('Ambil Foto'),
        galleryLabel: const Text('Pilih dari Galeri'),
        backgroundColor: AppColors.grayscaleBackground,
        fit: BoxFit.contain,
        placeholderWidget: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/camera.png',
              fit: BoxFit.cover,
              height: 40,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Ambil Gambar',
              style: TextStyle(
                color: AppColors.grayscaleLabel,
                fontSize: 22,
              ),
            ),
          ],
        )),
        decoration: const InputDecoration(
          filled: false,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
            borderSide: BorderSide(
              color: AppColors.stateErrorBase,
            ),
          ),
        ),
      ),
    );
  }
}
