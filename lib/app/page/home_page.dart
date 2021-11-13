import 'package:flutter/material.dart';

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
      body: Center(
        child: SizedBox(
          width: 520,
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
                          onPressed: () => print("asd"),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 600,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text("Job 1"),
                          onTap: () => print("asd"),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text("Job 1"),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text("Job 1"),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text("Job 1"),
                        ),
                        ListTile(
                          leading: Icon(Icons.account_circle),
                          title: Text("Job 1"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}
