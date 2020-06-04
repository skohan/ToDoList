

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<String> getTheTextYouFreakingWantFromUserHuh(String initial, BuildContext context) async{

  String finaleString = "";

  TextEditingController tec = new TextEditingController();

  finaleString = tec.text;
  tec.dispose(); 
  return finaleString;
}

