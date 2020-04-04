import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Profil"),
          centerTitle: true,
        ),
        body:
        MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[50],
        padding: EdgeInsets.only(top:40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children:[ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image(
                  image: NetworkImage("https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-9/p960x960/67554937_694461637662105_3658008308674985984_o.jpg?_nc_cat=107&_nc_sid=7aed08&_nc_oc=AQk9rezjTTWndRJm2SwMZZnoNxEYF7sBg61Lh6uK4CfZ4NeGRt585uAA7cRoG9UIod4&_nc_ht=scontent-sin6-1.xx&_nc_tp=6&oh=df30f593f65c38d065e0a305cc9e557a&oe=5E94BE8E"),
                  width: 150, height: 150,
                ), ),
                Text("Putu Erik Hendrawan", style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  height: 2.0,
                ), ),


                Container(
                  margin: EdgeInsets.only(top:20),
                  width: 320,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"SINGARAJA",Icons.location_city, Colors.red),
                          ContainIcon(12,"PUBGM",Icons.tablet_android, Colors.blue),
                        ],),
                      Column(
                        children: <Widget>[
                          ContainIcon(0,"NUSA DUA",Icons.home, Colors.green),
                          ContainIcon(12,"UNDIKSHA",Icons.school, Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}

//container  kotak yang berisi icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas,this.isi,this.icon,this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.only(left: 20,top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
          border: Border.all(width:3,color:Colors.brown,),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: warna,
              size: 40,
            ),

            Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top:24),
              width: 125,
              height: 30,
              child:TextBox(isi),
            ),
          ],
        )
    );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text(isi,style: TextStyle(
        height: 1.3,
        fontSize: 18,
        color: Colors.white,
      ),
      ),
    );
  }
}