import 'package:fcrb_todo_flutter/app/component/todo_row.dart';
import 'package:fcrb_todo_flutter/app/component/user_icon.dart';
import 'package:flutter/material.dart';

import 'todo_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  final String title = "ToDos";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            UserIcon(),
          ],
        ),
      ),
      body: Center(
          child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 520),
        child: Card(
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ToDos",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      IconButton(
                        splashRadius: 30,
                        iconSize: 32,
                        icon: Icon(Icons.add),
                        onPressed: () => showDialog(
                          context: context,
                          builder: (BuildContext context) => ToDoPopup(),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 420,
                  child: ListView(
                    children: [ToDoRow(), ToDoRow()],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
