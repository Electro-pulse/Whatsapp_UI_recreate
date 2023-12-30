// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

ThemeData customTheme() {
  return ThemeData(
  fontFamily: "OpenSans",
  floatingActionButtonTheme: FloatingActionButtonThemeData(foregroundColor: Colors.white,backgroundColor: Color(0xFF075E54)),
  tabBarTheme: TabBarTheme(labelColor: Colors.white,unselectedLabelColor: Colors.white),
  appBarTheme: AppBarTheme(foregroundColor: Colors.white,backgroundColor: Color(0xFF075E54),),
  );
}