import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main( )
{
  runApp(new MyWidget());
}
class MyWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar:
          new AppBar(
            title: new Text(
                "Second App",
                textAlign: TextAlign.center,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.normal
              ),),
            backgroundColor: Colors.green,
          ),
        body:  new Container(
          color: Colors.white,
          padding: EdgeInsets.all(10.0),
          child: new Center(
              child: new Text("Welcome 2 NareshIT - Hyderabad",
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
                          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                    },
                    tooltip: "Close the App",
                    backgroundColor: Colors.green,
                    child: new Icon(
                      Icons.close
                    ),),
      ),
    );
  } // build function( )
}