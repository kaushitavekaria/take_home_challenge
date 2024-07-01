import 'package:appflowy_board/appflowy_board.dart';
import 'package:flutter/material.dart';
import 'package:take_home_challenge/models/dashboard/view/rich_text_item.dart';
import 'package:take_home_challenge/models/dashboard/view/text_item.dart';

class DashboardProvider extends ChangeNotifier {
  void initDashboard(AppFlowyBoardController controller,
      AppFlowyBoardScrollController boardController) {
    boardController = AppFlowyBoardScrollController();
    final group1 = AppFlowyGroupData(id: "To Do", name: "To Do", items: [
      TextItem("Card 1"),
      TextItem("Card 2"),
      RichTextItem(title: "Card 3", subtitle: 'Aug 1, 2020 4:05 PM'),
      TextItem("Card 4"),
      TextItem("Card 5"),
    ]);

    final group2 = AppFlowyGroupData(
      id: "In Progress",
      name: "In Progress",
      items: <AppFlowyGroupItem>[
        TextItem("Card 6"),
        RichTextItem(title: "Card 7", subtitle: 'Aug 1, 2020 4:05 PM'),
        RichTextItem(title: "Card 8", subtitle: 'Aug 1, 2020 4:05 PM'),
      ],
    );

    final group3 =
        AppFlowyGroupData(id: "Done", name: "Done", items: <AppFlowyGroupItem>[
      TextItem("Card 9"),
      RichTextItem(title: "Card 10", subtitle: 'Aug 1, 2020 4:05 PM'),
      TextItem("Card 11"),
      TextItem("Card 12"),
    ]);

    controller.addGroup(group1);
    controller.addGroup(group2);
    controller.addGroup(group3);
  }
}
