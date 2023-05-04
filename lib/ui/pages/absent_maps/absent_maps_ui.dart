import 'package:fleetime_hris/ui/pages/absent_maps/components/absent_maps_background_maps.dart';
import 'package:fleetime_hris/ui/pages/absent_maps/components/absent_maps_floating_container.dart';
import 'package:flutter/material.dart';

class AbsentMapPage extends StatelessWidget {
  const AbsentMapPage({super.key});

  final bool _inPresence = false;
  final bool _outPresence = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
