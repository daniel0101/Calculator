import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => HomePageState();
}


// make a state class
class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("+"),
                  onPressed: () => {},
                ),
                RaisedButton(
                  child: Text("-"),
                  onPressed: () => {},
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text("*"),
                  onPressed: () => {},
                ),
                RaisedButton(
                  child: Text("/"),
                  onPressed: () => {},
                ),
              ],
            )
          ],
        )
      )
    );
  }
}