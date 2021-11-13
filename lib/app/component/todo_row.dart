import 'package:fcrb_todo_flutter/app/page/todo_popup.dart';
import 'package:flutter/material.dart';

class ToDoRow extends StatelessWidget {
  final double iconSize = 28.0;
  final double iconPadding = 24.0;

  const ToDoRow({Key? key}) : super(key: key);

  void onClickComplete() {
    print("complete!");
  }

  void onClickDelete() {
    print("delete!");
  }

  void onShowDetails(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) => ToDoPopup());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          renderCompleteToggle(context),
          const SizedBox(width: 8),
          renderTitleAndDueDate(context),
          const SizedBox(width: 8),
          renderTrashButton(context),
        ],
      ),
    );
  }

  Widget renderCompleteToggle(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(iconPadding),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          true ? Icons.check_circle_outline_rounded : Icons.circle_outlined,
          size: iconSize,
        ),
      ),
      onTap: () => {
        if(!true) {
          onClickComplete()
        }
      },
    );
  }

  Widget renderTitleAndDueDate(BuildContext context) {
    return Expanded(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text("Job 2"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("-"),
              ),
              Text("1 day"),
            ],
          ),
        ),
        onTap: () => onShowDetails(context),
      ),
    );
  }

  Widget renderTrashButton(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(iconPadding),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Icon(Icons.delete),
      ),
      onTap: onClickDelete,
    );
  }
}
