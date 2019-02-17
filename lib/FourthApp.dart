import 'package:flutter/material.dart';

void main()
{
  runApp(new MyStateful());
}

class MyStateful extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyState();
  }
}

class MyState extends State
{
  String msg = "--------------------";
  TextEditingController te1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Fourth App"),
          backgroundColor: Colors.deepPurple,
        ),
        body: new Container(
          child: new Form(child: new Column(
              children: <Widget>[
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new Text("Enter Text ", style: new TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                    ),),
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new TextField( controller: te1,
                        decoration: new InputDecoration(
                          hintText: "Enter Text"
                        ),
                        keyboardType: TextInputType.text,),
                    new RaisedButton(onPressed: (){
                            msg = te1.text;
                            setState(() { 

                            });
                    },
                          child: new Text("Get Text",
                            style: new TextStyle(color: Colors.white,
                                    fontWeight: FontWeight.bold,),
                              textAlign: TextAlign.center,),
                              color: Colors.deepPurple,
                          ),
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new Text("$msg", style: new TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal
                    ),),

              ],
          )),
        ),
      ),
);
  }
}