import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String title="",body="";
  @override
  Widget build(BuildContext context) {
    TextEditingController mycontroller1 = new TextEditingController();
    TextEditingController mycontroller2 = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none, labelText: "Enter your title here"),
              controller: mycontroller1,
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none, labelText: "Enter your note here"),
              controller: mycontroller2,
            )
            ,
            Text(
              title,
            ),
            Text(
              body,
            ),
            FlatButton(
              onPressed: ()
              {
                setState(() {
                  title=mycontroller1.text.toString();
                  body=mycontroller2.text.toString();
                });
              },
              child: Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
