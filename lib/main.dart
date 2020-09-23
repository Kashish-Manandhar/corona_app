import 'package:corona_app/Pages/Example.dart';
import 'package:corona_app/Pages/Login.dart';
import 'package:flutter/material.dart';

import 'Pages/Home.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/":(context)=>FirstScreen(),
      "/login":(context)=>Example()
  },
  ));
}

