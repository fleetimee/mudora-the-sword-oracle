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
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Center(
        child: Text('Visit'),
      ),
    );
  }
}
