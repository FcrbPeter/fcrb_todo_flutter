import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class FirebaseInitialize extends StatefulWidget {
  final AsyncWidgetBuilder<Object?> loadingBuilder;
  final AsyncWidgetBuilder<Object?> completeBuilder;
  final AsyncWidgetBuilder<Object?> errorBuilder;

  const FirebaseInitialize(
      {required this.loadingBuilder,
      required this.completeBuilder,
      required this.errorBuilder,
      Key? key})
      : super(key: key);

  @override
  State<FirebaseInitialize> createState() => _FirebaseInitializeState();
}

class _FirebaseInitializeState extends State<FirebaseInitialize> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print(snapshot.error);

            return widget.errorBuilder(context, snapshot);
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return widget.completeBuilder(context, snapshot);
          }

          return widget.loadingBuilder(context, snapshot);
        });
  }
}
