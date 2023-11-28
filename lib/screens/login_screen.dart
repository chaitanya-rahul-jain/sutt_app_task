import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 60,
                icon: Image.asset("assets/images/login_screen/google_logo.png"),
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}

// class GoogleSignIn {
//   final _googleSignIn = GoogleSignIn();
//   signInWithGoogle() async {
//     final GoogleSignInAccount? gUser = await _googleSignIn.signIn();
//     final GoogleSignInAuthentication gAuth = await gUser!.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: gAuth.accessToken,
//       idToken: gAuth.idToken,
//     );

//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }
