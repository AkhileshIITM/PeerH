import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:peerh/globals.dart';
import 'package:peerh/screens/createprofile.dart';
import 'package:peerh/widget/sign_up.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Something went wrong. Close this and try again'),
              );
            } else if (snapshot.hasData) {
              return const CreateProfilePage();
            }
            return const SignUp(
              title: Globals.title,
            );
          },
        ),
      );
}
