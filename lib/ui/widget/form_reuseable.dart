import 'package:dotted_border/dotted_border.dart';
import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/ui/widget/form_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:intl/intl.dart';

class FleetimeTimePickerReuseable extends StatelessWidget {
  const FleetimeTimePickerReuseable({
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

class FleetimeTextFieldReuseable extends StatelessWidget {
  const FleetimeTextFieldReuseable({
    super.key,
    required this.name,
    required this.maxLines,
    this.validator,
    required this.hintText,
    this.inputFormatters,
    this.keyboardType,
  });

  final String name;
  final int maxLines;
  final String? Function(String?)? validator;
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      maxLines: maxLines,
      validator: validator,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      style: const TextStyle(
        color: AppColors.grayscaleTitle,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        filled: false,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.grayscalePlaceholder,
          fontSize: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.grayscalePlaceholder,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.grayscalePlaceholder,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryBlue,
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

class FleetimeDropdownReuseable extends StatelessWidget {
  const FleetimeDropdownReuseable({
    super.key,
    required this.name,
    required this.hintText,
    required this.items,
    this.validator,
  });

  final String name;
  final String hintText;
  final List<DropdownMenuItem<String>> items;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDropdown(
      name: name,
      validator: validator,
      style: const TextStyle(
        color: AppColors.grayscaleTitle,
        fontSize: 20,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        filled: false,
        hintStyle: const TextStyle(
          color: AppColors.grayscalePlaceholder,
          fontSize: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryBlue,
          ),
        ),
      ),
      items: items,
    );
  }
}

class FleetimeDatePickerReuseable extends StatelessWidget {
  const FleetimeDatePickerReuseable({
    super.key,
    required this.name,
    required this.hintText,
    this.validator,
  });

  final String name;
  final String hintText;
  final String? Function(DateTime?)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: name,
      style: const TextStyle(
        color: AppColors.grayscaleTitle,
        fontSize: 20,
      ),
      validator: validator,
      format: DateFormat('EEEE, dd MMMM yyyy', 'id_ID'),
      initialDatePickerMode: DatePickerMode.day,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
      inputType: InputType.date,
      decoration: InputDecoration(
        suffixIcon: const Icon(
          Icons.calendar_month,
          color: Colors.grey,
        ),
        hintText: hintText,
        filled: false,
        hintStyle: const TextStyle(
          color: AppColors.grayscalePlaceholder,
          fontSize: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12.0),
          ),
          borderSide: BorderSide(
            color: AppColors.primaryBlue,
          ),
        ),
      ),
    );
  }
}
