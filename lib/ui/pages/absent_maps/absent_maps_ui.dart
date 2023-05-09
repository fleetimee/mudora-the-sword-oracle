import 'package:fleetime_hris/ui/pages/absent_maps/components/absent_maps_background_maps.dart';
import 'package:fleetime_hris/ui/pages/absent_maps/components/absent_maps_floating_container.dart';
import 'package:fleetime_hris/ui/widget/appbar.dart';
import 'package:flutter/material.dart';

class AbsentMapPage extends StatelessWidget {
  const AbsentMapPage({super.key});

  final bool _inPresence = false;
  final bool _outPresence = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarWithBack(
        backgroundColor: Colors.transparent,
        title: '',
        leading: SizedBox(
          height: 20,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.refresh,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const AbsentMapBackgroundMaps(),
          AbsentMapFloatingContainer(
            inPresence: _inPresence,
            outPresence: _outPresence,
          ),
        ],
      ),
    );
  }
}
