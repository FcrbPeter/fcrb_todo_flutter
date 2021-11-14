import 'package:firebase_auth/firebase_auth.dart';

class Authentication {
  static Future<UserCredential> signInWithGoogle() async {
    GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();

    googleAuthProvider.addScope('https://www.googleapis.com/auth/contacts.readonly');
    
    return await FirebaseAuth.instance.signInWithPopup(googleAuthProvider);
  }

  static Future<UserCredential> signInWithGitHub() async {
    GithubAuthProvider githubAuthProvider = GithubAuthProvider();

    return await FirebaseAuth.instance.signInWithPopup(githubAuthProvider);
  }
}