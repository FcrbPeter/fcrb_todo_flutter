import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  Widget? title;
  Widget? content;
  List<Widget>? action;

  AppDialog({Key? key, this.title, this.content, this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      elevation: 3,
      title: Center(child: title),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              if (content != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: content!,
                ),
              if (action != null)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: action!,
                )
            ],
          ),
        ),
      ],
    );
  }
}
