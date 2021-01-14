import 'package:boardview/board_item.dart';
import 'package:boardview/board_list.dart';
import 'package:boardview/boardview.dart';
import 'package:boardview/boardview_controller.dart';
import 'package:flutter/material.dart';
import 'package:trello_ui/models/board_list_model.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/board_item_model.dart';

class BoardViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BoardViewController boardViewController = new BoardViewController();
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: BoardView(
          lists: [
            for (int i = 0; i < boardList.length; i++)
              BoardList(
                backgroundColor: Colors.white54,
                header: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      boardList[i].title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Expanded(child: Container()),
                ],
                items: [
                  for (int j = 0; j < boardList[i].items.length; j++)
                    buildBoardItem(
                      context,
                      boardList[i].items[j],
                      boardList[i].items[j].assignedTo,
                      boardList[i].items[j].id,
                      (listIndex, itemIndex, oldListIndex, oldItemIndex) {},
                    ),
                ],
              )
          ],
          boardViewController: boardViewController,
        ),
      ),
    );
  }

  Widget buildBoardItem(
    BuildContext context,
    BoardItemModel itemObject,
    String subtitle,
    int id,
    Function(int, int, int, int) callback,
  ) {
    return BoardItem(
        onStartDragItem:
            (int listIndex, int itemIndex, BoardItemState state) {},
        onDropItem: (int listIndex, int itemIndex, int oldListIndex,
            int oldItemIndex, BoardItemState state) {
          callback(listIndex, itemIndex, oldListIndex, oldItemIndex);
        },
        onTapItem: (int listIndex, int itemIndex, BoardItemState state) async {
          launch('www.google.com');
        },
        item: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 12),
                    Expanded(child: Text(itemObject.title)),
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(child: Container()),
                    VxBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4,
                        ),
                        child: Text(
                          subtitle,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ).color(Vx.randomColor).rounded.make(),
                    Expanded(child: Container()),
                    Text(
                      'id: $id',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                  ],
                )
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          ),
        ));
  }
}
