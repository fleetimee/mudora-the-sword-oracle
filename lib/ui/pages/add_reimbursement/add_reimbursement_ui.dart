import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:fleetime_hris/common/constant/string_constant.dart';
import 'package:fleetime_hris/common/constant/text_style_constant.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:fleetime_hris/ui/widget/bottom_navigation_bar_button.dart';
import 'package:fleetime_hris/ui/widget/form_reuseable.dart';
import 'package:flutter/material.dart';

class AddReimbursementPage extends StatelessWidget {
  const AddReimbursementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithCross(
        context: context,
        title: StringConstant.addReimbursementTitle,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                StringConstant.addReimbursementSelector,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8,
              ),
              const FleetimeDropdownReuseable(
                name: 'reimbursment',
                hintText: 'Pilih Reimbursment',
                items: [
                  DropdownMenuItem(
                    value: 'transportasi',
                    child: Text('Transportasi'),
                  ),
                  DropdownMenuItem(
                    value: 'makan',
                    child: Text('Makan'),
                  ),
                  DropdownMenuItem(
                    value: 'bbm',
                    child: Text('BBM'),
                  ),
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                StringConstant.addReimbursementQuantity,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8,
              ),
              FleetimeTextFieldReuseable(
                name: 'needs',
                hintText: 'Rp 10,000',
                maxLines: 1,
                inputFormatters: [
                  CurrencyTextInputFormatter(
                    customPattern: 'Rp #,###',
                    decimalDigits: 0,
                    symbol: 'Rp ',
                  )
                ],
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: 32,
              ),
              const FleetimeImagePickerReuseable(
                name: 'image',
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                StringConstant.addReimbursementDescription,
                style: StyleConstant.formLabel,
              ),
              const SizedBox(
                height: 8,
              ),
              const FleetimeTextFieldReuseable(
                name: 'description',
                hintText: 'Tulis deskripsi',
                maxLines: 5,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarButton(
        title: 'Kirim',
        onPressed: () {},
      ),
    );
  }
}
