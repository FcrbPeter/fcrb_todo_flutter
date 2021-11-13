import 'package:flutter/material.dart';

import 'page/home_page.dart';
import 'theme/theme.dart';

class AppWindow extends StatelessWidget {
  const AppWindow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fcrb ToDos',
      theme: appTheme,
      home: const HomePage(),
    );
  }

}