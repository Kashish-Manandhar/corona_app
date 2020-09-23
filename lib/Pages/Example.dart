import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import '../Country.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString("assets/country.json"),
          builder: (context, snapshot) {

            Product product = new Product.fromJson(snapshot.data);
            return Text(
              product.name,
            );
          },
        ),
      ),
    );
  }
}
