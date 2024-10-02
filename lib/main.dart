import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Hello World App",
      home: Scaffold(
        body: Center(
          child: Text(
            "In 2009, Ronaldo transferred to Real Madrid for a then world record £80 million.[92] At least 80,000 fans attended his presentation at the Santiago Bernabéu, surpassing the 25-year record of 75,000 fans who had welcomed Diego Maradona at Napoli.[93]Ronaldo made his La Liga debut against Deportivo La Coruña on 29 August, scoring a penalty in a 3–2 home win.[94] He scored in each of his first four league games",
            textAlign: TextAlign.justify,
            maxLines: 3,
            style: TextStyle(
                fontSize: 32,
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                height: 1.5,
                letterSpacing: 10,
                //backgroundColor: Colors.amber,
                wordSpacing: 5,
                overflow: TextOverflow.ellipsis
                //decoration: TextDecoration.underline,
          ),),
        ),
      )
    );
  }

}