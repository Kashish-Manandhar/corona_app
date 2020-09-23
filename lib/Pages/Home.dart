import 'package:corona_app/Note.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  List<Note> noteList=[Note(title: "Note 1",body: "This is note 1"),
    Note(title: "Note 2",body: "This is note 2"),
    Note(title: "Note 3",body: "This is note 3")];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
        body: SafeArea(
          child:

              ListView.builder(

                  itemCount: noteList.length,
                  itemBuilder:(context,index){
                    return Card(
                        child: ListTile(
                          onTap: ()
                          {


                          },
                          title: Text(noteList[index].title),
                          subtitle: Text(noteList[index].body),

                        )
                    );
                  }
              ),


          ),

    floatingActionButton: FloatingActionButton(
      onPressed: ()
      {
        Navigator.pushNamed(context, "/login");
      },


    ),

  );
  }

  }
