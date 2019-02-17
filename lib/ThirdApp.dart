import 'package:flutter/material.dart';
void main( )
{
      runApp(new MyStatefulWidget());
}

class MyStatefulWidget extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyState();
  }
} // MyStatefulWidget

class MyState extends State
{
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar:
        new AppBar(
          title: new Text(
            "Third App",
            textAlign: TextAlign.center,
            style: new TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.normal
            ),),
          backgroundColor: Colors.deepOrange,
        ),
        body:  new Container(
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          child: new Center(
            child: new Text("Tapped $count times",
              textAlign: TextAlign.center,
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
              ),),
          ),
        ),
        floatingActionButton:
        new FloatingActionButton(
          onPressed: (){
                    ++count;
                    setState(() {

                    });
          },
          tooltip: "Add",
          backgroundColor: Colors.deepOrange,
          child: new Icon(
              Icons.add
          ),),
      ),
    );;
  }

}