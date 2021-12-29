import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Globals {
  //IITM Colors
  static const iitmgray = Color(0xFF2a211f);
  static const iitmmaroon = Color(0xFF7b241c);
  static const iitmbeige = Color(0xFFd5a54e);
  static const iitmred = Color(0xFFda2a27);
  static const iitmcream = Color(0xFFfffef2);

  //apptexts
  static const appName = "PeerH";
  static const title = "PeerH : A Student Platform";

  static const statusBarColor = SystemUiOverlayStyle(
      statusBarColor: Globals.iitmred,
      statusBarIconBrightness: Brightness.dark);
}
