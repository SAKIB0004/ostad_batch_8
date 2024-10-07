import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          centerTitle: true,
        ),

        //body-image
        /*body: Image.asset(
          'images/cr.jpg',
          width: 200,
          height: 300,
          fit: BoxFit.fitWidth,
          //color: Colors.red.shade200,
          alignment: Alignment.topCenter,
        ),*/

        /*body: Image.network(
            'https://st3.depositphotos.com/1033600/19135/i/450/depositphotos_191352360-stock-illustration-wax-figure-of-loki-fictional.jpg',
            width: 200,
            height: 500,
            //fit: BoxFit.fitHeight,
            alignment: Alignment.topRight,
        ),*/

        body: Column(
          children: [
            Text('heloo'),
            Text('world'),
            Image.network(
              'https://st3.depositphotos.com/1033600/19135/i/450/depositphotos_191352360-stock-illustration-wax-figure-of-loki-fictional.jpg',
              width: 200,
              height: 500,
              //fit: BoxFit.fitHeight,
              alignment: Alignment.topRight,
            ),

          ],
        )




      ),
    );
  }
}
