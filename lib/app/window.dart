import 'package:flutter/material.dart';

import 'page/home_page.dart';
import 'theme/theme.dart';

class AppWindow extends StatelessWidget {
  bool isLoading = false;
  bool isError = false;

  AppWindow({Key? key}) : super(key: key);

  AppWindow.loading({Key? key})
      : isLoading = true,
        super(key: key);

  AppWindow.error({Key? key})
      : isError = true,
        super(key: key);

  Widget renderLoading() {
    return const Center(child: Text("Loading..."));
  }

  Widget renderError() {
    return const Center(child: Text("Error..."));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fcrb ToDos',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: isError ? renderError() : isLoading ? renderLoading() : const HomePage(),
    );
  }
}
