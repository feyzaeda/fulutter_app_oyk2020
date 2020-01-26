import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home:Scaffold(
        appBar: AppBar(
          title: Text("Buton Türleri"),
          backgroundColor: Colors.pink,
        ),
        body: ButonTurleri(),
      ),
    );
  }
}

class ButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent[200],
      child: Column(
        children: <Widget>[
          Text("Buton Turleri"),

          RaisedButton(
            onPressed: (){
              debugPrint("Ilk butona tıklandı");
            },
            color: Colors.green,
            child: Text("Raised Button1"),

          ),

          RaisedButton(
            onPressed: (){
              debugPrint("Ikınci butona tıklandı");
            },
            color: Colors.blue,
            child: Text("Raised Button2"),

          ),

          RaisedButton(
            onPressed: uzakFonsiyon ,
            color: Colors.red,
            child: Text("Raised Button3"),

          ),
          IconButton(
            onPressed: (){
              debugPrint("Icon Button");
            },

            icon: Icon(Icons.all_inclusive,   color: Colors.pink, size: 50,),


          ),
          FlatButton(
            onPressed: (){
              debugPrint("flat buton");
            },
            child: Text("Flat Button"),
          )
        ],
      ),
    );


  }


}

void uzakFonsiyon(){
  debugPrint("3. butona tıklandı");
}