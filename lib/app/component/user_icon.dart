import 'package:fcrb_todo_flutter/app/service/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          User? user = snapshot.data as User?;

          if (user != null) {
            return Text(user.uid);
          }

          return TextButton(
            child: Text("Login"),
            onPressed: () => Authentication.signInWithGoogle(),
          );
        });
  }
}
