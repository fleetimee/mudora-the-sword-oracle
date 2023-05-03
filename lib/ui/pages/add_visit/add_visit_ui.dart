import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

class AddVisitPage extends StatelessWidget {
  const AddVisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormBuilderState> fbKey = GlobalKey<FormBuilderState>();

    return Scaffold(
      appBar: AppBarWithCross(
        title: StringConstant.addVisitTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FormBuilder(
            key: fbKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  StringConstant.addVisitDestination,
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FormBuilderDropdown(
                  name: 'destination',
                  style: const TextStyle(
                    color: AppColors.grayscaleTitle,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Select Destination',
                    filled: false,
                    hintStyle: TextStyle(
                      color: AppColors.grayscalePlaceholder,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: AppColors.primaryBlue,
                      ),
                    ),
                  ),
                  items: const [
                    DropdownMenuItem(
                      value: 'Destination 1',
                      child: Text('Destination 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Destination 2',
                      child: Text('Destination 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Destination 3',
                      child: Text('Destination 3'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  StringConstant.addVisitLocation,
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                const FleetimeTextFieldReuseable(
                  name: 'location',
                  hintText: StringConstant.addVisitLocation,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  StringConstant.addVisitDate,
                  style: StyleConstant.formLabel,
                ),
                const SizedBox(
                  height: 8,
                ),
                FormBuilderDateTimePicker(
                  name: 'date',
                  style: const TextStyle(
                    color: AppColors.grayscaleTitle,
                    fontSize: 20,
                  ),
                  format: DateFormat('EEEE, dd MMMM yyyy', 'id_ID'),
                  initialDatePickerMode: DatePickerMode.day,
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                  maxLengthEnforcement:
                      MaxLengthEnforcement.truncateAfterCompositionEnds,
                  inputType: InputType.date,
                  decoration: const InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_month,
                      color: Colors.grey,
                    ),
                    hintText: 'Select Date',
                    filled: false,
                    hintStyle: TextStyle(
                      color: AppColors.grayscalePlaceholder,
                      fontSize: 20,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                      borderSide: BorderSide(
                        color: AppColors.primaryBlue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/visit_qr.png',
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          StringConstant.addVisitScanBarcode,
                          style: StyleConstant.formLabel,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: StringConstant.addVisitButton,
        onPressed: () {},
      ),
    );
  }
}
