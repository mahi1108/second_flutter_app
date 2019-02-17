import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

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
  TextEditingController te1 = new TextEditingController();
  TextEditingController te2 = new TextEditingController();
  String msg = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Fifth App"),
          backgroundColor: Colors.deepPurple,
        ),
        body: new Container(
          child: new Form(child: new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(10.0)),
              new TextField( controller: te1,
                decoration: new InputDecoration(
                    hintText: "Enter Email "
                ),
                keyboardType: TextInputType.emailAddress,),
                new Padding(padding: EdgeInsets.all(10.0)),
              new TextField( controller: te2,
                decoration: new InputDecoration(
                    hintText: "Enter Password "
                ),
                keyboardType: TextInputType.text,),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Row(
                children: <Widget>[
                  new RaisedButton(onPressed: login,
                    child: new Text("LOGIN",
                      style: new TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,),
                    color: Colors.deepPurple,
                  ),
                  new Padding(padding: EdgeInsets.only(left: 10)),
                  new RaisedButton(onPressed: register,
                    child: new Text("REGISTER",
                      style: new TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.center,),
                    color: Colors.deepPurple,
                  ),
                ],
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Text("$msg",
                      style: new TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0
                      ),)

            ],
          )),
        ),
      ),
    );
  } // build( )

    void register() async
    {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', te1.text);
      await prefs.setString('pass', te2.text);
      prefs.commit();
    }

    void login() async
    {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String email = await prefs.getString('email');
      String pass = await prefs.getString('pass');
      
    /*  Toast.show("$email \n $pass", context,
          duration: Toast.LENGTH_LONG,
          gravity: Toast.BOTTOM); */
          msg = "$email \n $pass";
          setState(() {

          });
    }


}