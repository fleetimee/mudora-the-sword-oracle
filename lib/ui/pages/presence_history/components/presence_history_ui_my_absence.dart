import 'package:fleetime_hris/data/entities/presence_history_card_entities.dart';
import 'package:fleetime_hris/ui/pages/presence_history/components/presence_history_ui_card.dart';
import 'package:flutter/material.dart';

class PresenceCardMyAbsence extends StatelessWidget {
  const PresenceCardMyAbsence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.separated(
          itemCount: presenceHistoryCardEntititiesList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return PresenceHistoryCard(
              index: index,
              cardDate: presenceHistoryCardEntititiesList[index].cardDate,
              cardName: presenceHistoryCardEntititiesList[index].cardName,
              inTime: presenceHistoryCardEntititiesList[index].inTime,
              outTime: presenceHistoryCardEntititiesList[index].outTime,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 20,
            );
          }),
    );
  }
}
