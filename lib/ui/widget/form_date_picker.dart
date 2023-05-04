import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FleetimeDatePicker extends StatefulWidget {
  final String name;
  final InputDecoration decoration;
  final void Function(dynamic)? onChanged;
  final void Function(dynamic)? onSaved;
  final String? Function(dynamic)? validator;

  const FleetimeDatePicker({
    super.key,
    required this.name,
    required this.decoration,
    this.onChanged,
    this.onSaved,
    this.validator,
  });

  @override
  // ignore: library_private_types_in_public_api
  _FleetimeDatePickerState createState() => _FleetimeDatePickerState();
}

class _FleetimeDatePickerState extends State<FleetimeDatePicker> {
  Time _time = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilderField(
      name: widget.name,
      onChanged: widget.onChanged,
      onSaved: widget.onSaved,
      validator: widget.validator,
      // valueTransformer: _timeOfDayToUtc,
      builder: (FormFieldState<dynamic> field) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              showPicker(
                is24HrFormat: true,
                okText: 'PILIH',
                cancelText: 'BATAL',
                context: context,
                value: _time,
                onChange: (value) {
                  setState(() {
                    _time = value;
                  });
                  field.didChange(value);
                },
                themeData: ThemeData.light().copyWith(
                  colorScheme: const ColorScheme.light().copyWith(
                    primary: AppColors.primaryBlue,
                  ),
                ),
              ),
            );
          },
          child: InputDecorator(
            decoration: widget.decoration.copyWith(
              errorText: field.errorText,
            ),
            child: Text(
              field.value != null
                  ? '${_time.hour}:${_time.minute.toString().padLeft(2, '0')}'
                  : '',
              style: const TextStyle(
                color: AppColors.grayscaleBody,
                fontSize: 20,
              ),
            ),
          ),
        );
      },
    );
  }
}
