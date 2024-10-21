import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Hello World",
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
          children: [
            SizedBox(
              height: 100,
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
                padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 30
                ),
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
            onPressed: (){
                print("Tapped on elevated button 1");
                },
            child: Text("Tap"),

            ),

            SizedBox(height:100),

            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                alignment: Alignment.topCenter,
                padding: EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 30
                ),
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
              onPressed: (){
                print("tapped on Text buttom 2");
              },
              child: Text("tap"),
            ),

            SizedBox(height: 100,),

          ],

        ),
      ),
    );
  }
}
