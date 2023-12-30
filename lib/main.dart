// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import "package:whatsapp_clone/CustomUI/theme.dart";
import "package:whatsapp_clone/Screens/home.dart";

void main() => runApp(
  MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: customTheme(),
  home: Home(), 
));

