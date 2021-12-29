import 'package:flutter/material.dart';
import 'package:peerh/globals.dart';
import 'package:peerh/provider/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<SignUp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Globals.iitmmaroon,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage('assets/icons/logo.png'),
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Welcome to',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              'PeerH - A Student Platform',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Globals.iitmcream,
                onPrimary: Globals.iitmgray,
                //minimumSize: Size(double.infinity, 50),
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSigninProvider>(context, listen: false);
                provider.googleLogin();
              },
              icon: const FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              label: const Text(
                'sign in with IITM student ID',
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              '© Copyright Reserved. IITM BSc 2021-22',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
