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
      title: "Hello World",
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  shadowColor: Colors.blue,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 4,
                      strokeAlign: 3.5,
                    ),
                  ),
                  maximumSize: Size(200, 100),
                  minimumSize: Size(200, 100),
                ),
                onPressed: () {
                  showDialog(
                      barrierColor: Colors.amberAccent,
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Tapped"),
                          content: Text("Are u sure?"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  print("Tapped Yessss");
                                },
                                child: Text("Yes")),
                            TextButton(
                                onPressed: () {
                                  print("Tapped Noooo");
                                },
                                child: Text("No")),
                          ],
                        );
                      });
                  print("Tapped on elevated button 1");
                },
                child: Text("Tap"),
              ),
              SizedBox(height: 50),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                  shadowColor: Colors.blue,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(
                      color: Colors.lightBlueAccent,
                      width: 4,
                      strokeAlign: 3.5,
                    ),
                  ),
                  maximumSize: Size(200, 100),
                  minimumSize: Size(200, 100),
                ),
                onPressed: () {
                  print("tapped on Text button 2");
                },
                child: Text("tap"),
              ),
              SizedBox(
                height: 20,
              ),
              IconButton(
                onPressed: () {
                  print("tapped icon button");
                },
                icon: Icon(Icons.add),
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                style: IconButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  print("tapped outline button");
                },
                child: Text("click here"),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  print("just one click");
                },
                onDoubleTap: () {
                  print("just double click");
                },
                onLongPress: () {
                  print("on long press click");
                },
                onLongPressCancel: () {
                  print("on long press cancel click");
                },
                child: Column(
                  children: [
                    Text("text"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                splashColor: Colors.lightBlue,
                onTap: () {
                  print("Tapped Ink well");
                },
                child: Text("Ink Well "),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Tapped on floating action button");
          },
          child: Icon(Icons.add_a_photo),
        ));
  }
}
