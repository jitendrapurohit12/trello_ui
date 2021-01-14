import 'package:trello_ui/models/board_item_model.dart';

class BoardListModel {
  String title;
  int id;
  List<BoardItemModel> items;

  BoardListModel({this.title, this.id, this.items});
}

final boardList = [
  BoardListModel(title: 'Board 1', id: 1, items: [
    BoardItemModel(title: 'Board 1 Item 1', assignedTo: 'Jake', id: 11),
    BoardItemModel(title: 'Board 1 Item 2', assignedTo: 'BMO', id: 12),
    BoardItemModel(title: 'Board 1 Item 3', assignedTo: 'Finn', id: 13),
    BoardItemModel(
        title: 'Board 1 Item 4', assignedTo: 'Princess Bubblegum', id: 14),
  ]),
  BoardListModel(title: 'Board 2', items: [
    BoardItemModel(title: 'Board 2 Item 1', assignedTo: 'Jake', id: 21),
    BoardItemModel(title: 'Board 2 Item 2', assignedTo: 'BMO', id: 22),
    BoardItemModel(title: 'Board 2 Item 3', assignedTo: 'Finn', id: 23),
    BoardItemModel(
        title: 'Board 2 Item 4', assignedTo: 'Princess Bubblegum', id: 24),
  ]),
  BoardListModel(title: 'Board 3', items: [
    BoardItemModel(title: 'Board 3 Item 1', assignedTo: 'Jake', id: 31),
    BoardItemModel(title: 'Board 3 Item 2', assignedTo: 'BMO', id: 32),
    BoardItemModel(title: 'Board 3 Item 3', assignedTo: 'Finn', id: 33),
    BoardItemModel(
        title: 'Board 3 Item 4', assignedTo: 'Princess Bubblegum', id: 34),
  ]),
  BoardListModel(title: 'Board 4', items: [
    BoardItemModel(title: 'Board 4 Item 1', assignedTo: 'Jake', id: 41),
    BoardItemModel(title: 'Board 4 Item 2', assignedTo: 'BMO', id: 42),
    BoardItemModel(title: 'Board 4 Item 3', assignedTo: 'Finn', id: 43),
    BoardItemModel(
        title: 'Board 4 Item 4', assignedTo: 'Princess Bubblegum', id: 44),
  ]),
];
