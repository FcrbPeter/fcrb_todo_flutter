import 'package:fcrb_todo_flutter/app/component/dialog/app_dialog.dart';
import 'package:flutter/material.dart';

class ToDoPopup extends StatelessWidget {
  const ToDoPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppDialog(
      title: Text("title"),
      content: Text("test"),
      action: [
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("close")
        )
      ],
    );
  }
}