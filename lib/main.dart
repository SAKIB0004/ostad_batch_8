import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ListView.separated , Container

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello World",
      home: home(),
    );
  }
}

class home extends StatelessWidget{

  List<String> friendsList = [
    "sakib",
    "skismska1",
    "saki",
    "sassa",
    "sadasa",
    "sasad",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
    "sakib",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.amber,
      ),
      // body: ListView.separated(
      //     itemCount: friendsList.length,
      //     itemBuilder: (BuildContext context, int index){
      //       return Column(
      //           children: [
      //             Text(friendsList[index]),
      //             Divider(
      //               height: 20,
      //               thickness: 5,
      //               color: Colors.pink,
      //               indent: 10,
      //               endIndent: 15,
      //             )
      //           ]
      //       );
      //     },
      //     separatorBuilder: (BuildContext context, int index){
      //       return Divider(
      //         endIndent: 20,
      //         indent: 20,
      //         height: 15,
      //         thickness: 3,
      //         color: Colors.grey,
      //       );
      //     },
      // ),

      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.red.shade300,
                      offset: Offset(0,2),
                      blurRadius: 5,
                      spreadRadius: 7,
                    ),
                  ]
                ),
              ),
              Container(
                height: 100,
                width: 100,

                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(30),
                  //   topRight: Radius.circular(30),
                  // ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/shoe.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.5,
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Container 1"),

                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}