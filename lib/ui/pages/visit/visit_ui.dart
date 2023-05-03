import 'package:fleetime_hris/common/constant/color_constant.dart';
import 'package:fleetime_hris/data/entities/visit_card_entities.dart';
import 'package:fleetime_hris/ui/pages/visit/components/visit_ui_card.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class VisitPage extends StatelessWidget {
  static const String routeName = '/visit';

  const VisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarDefault(
        title: 'Visit',
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: AppColors.primaryBlue,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: visitEntitites.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 5,
          );
        },
        itemBuilder: (context, index) {
          return VisitCard(
            index: index,
          );
        },
      ),
    );
  }
}