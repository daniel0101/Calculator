import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State createState() => HomePageState();
}


// make a state class
class HomePageState extends State<HomePage>{
  num num1 = 0,num2 = 0,output = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void operation(String op){
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    
    switch (op) {
      case "add":
        setState(() => output = num1 + num2);
        break;
      case "sub":
        setState(() => output = num1 - num2);
        break;
      case "multi":
        setState(() => output = num1 * num2);
        break;
      case "divide":
        setState(() => output = num1 / num2);
        break;
      case "clear":
        setState((){
          output = 0;
          t1.text = "0";
          t2.text = "0";
        });
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Output : $output",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t2,
            ),
            Padding(padding: const EdgeInsets.only(top: 20.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "+",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: () => this.operation('add'),
                ),
                MaterialButton(
                  child: Text(
                    "-",
                    style: TextStyle(color: Colors.white)
                  ),
                  color: Colors.blueAccent,
                  onPressed: () => this.operation('sub'),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "*",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: () => this.operation('multi'),
                ),
                MaterialButton(
                  child: Text(
                    "/",
                    style: TextStyle(color: Colors.white)
                  ),
                  color: Colors.blueAccent,
                  onPressed: () => this.operation('divide'),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  child: Text(
                    "Clear",
                    style: TextStyle(color: Colors.white,),
                  ),
                  color: Colors.red,
                  onPressed: () => this.operation('clear'),
                )
              ],
            )
          ],
        )
      )
    );
  }
}