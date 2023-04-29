import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';

class AddActivityPage extends StatefulWidget {
  static const String routeName = '/add_activity';

  const AddActivityPage({super.key});

  @override
  State<AddActivityPage> createState() => _AddActivityPageState();
}

class _AddActivityPageState extends State<AddActivityPage> {
  Time _time = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });
  }

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBarWithCross(
        title: 'Tambah Laporan Aktivitas',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              StringConstant.addActivityDate,
              style: TextStyle(
                color: AppColors.grayscaleBody,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              StringConstant.addActivityName,
              style: TextStyle(
                color: AppColors.grayscaleTitle,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              StringConstant.addActivityDepartment,
              style: TextStyle(
                color: AppColors.grayscaleBody,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            FormBuilder(
              key: _fbKey,
              child: Expanded(
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          StringConstant.addActivityTimeStartLabel,
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const FleetimeDatePickerReuseable(
                          name: 'jam_mulai',
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const Text(
                          StringConstant.addActivityTimeEndLabel,
                          style: TextStyle(
                            color: AppColors.grayscaleLabel,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const FleetimeDatePickerReuseable(
                          name: 'jam_selesai',
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        DottedBorder(
                          radius: const Radius.circular(20),
                          strokeWidth: 1,
                          color: AppColors.grayscaleLabel,
                          strokeCap: StrokeCap.butt,
                          dashPattern: const [8, 4],
                          borderType: BorderType.RRect,
                          child: FormBuilderImagePicker(
                            name: 'photos',
                            maxImages: 1,
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
                              hintText: 'Tambah Foto',
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Kirim',
        onPressed: () {
          if (_fbKey.currentState!.saveAndValidate()) {
            print(_fbKey.currentState!.value);
          }
        },
      ),
    );
  }
}

class FleetimeDatePickerReuseable extends StatelessWidget {
  const FleetimeDatePickerReuseable({
    super.key,
    required this.name,
    this.onChanged,
    this.onSaved,
  });

  final String name;
  final void Function(dynamic)? onChanged;
  final void Function(dynamic)? onSaved;

  @override
  Widget build(BuildContext context) {
    return FleetimeDatePicker(
      name: name,
      onChanged: onChanged,
      onSaved: onSaved,
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
