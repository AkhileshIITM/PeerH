import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:peerh/globals.dart';
import 'package:peerh/screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:peerh/provider/google_sign_in.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSigninProvider(),
        child: MaterialApp(
          title: Globals.appName,
          theme: ThemeData(
            scaffoldBackgroundColor: Globals.iitmbeige,
            fontFamily: 'Roboto',
            textTheme: const TextTheme(
              headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
              headline2: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
              headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              headline4: TextStyle(fontSize: 14.0),
              bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Montserrat'),
            ),
          ),
          home: HomePage(),
        ),
      );
}
