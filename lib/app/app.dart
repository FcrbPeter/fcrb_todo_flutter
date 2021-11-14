import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'component/firebase_init.dart';
import 'window.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirebaseInitialize(
      loadingBuilder: (context, _) => AppWindow.loading(),
      completeBuilder: (context, _) => AppWindow(),
      errorBuilder: (context, _) => AppWindow.error(),
    );
  }
}
