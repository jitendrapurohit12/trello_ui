import 'package:flutter/material.dart';
import 'package:trello_ui/dialogs/add_item_dialog.dart';

Future<String> showAddItemDialog(BuildContext context) async {
  final value =
      await showDialog(context: context, builder: (_) => AddItemDialog());
  return value as String;
}
