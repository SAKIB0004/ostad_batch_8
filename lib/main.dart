import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///MediaQuery | Wrap | LayoutBuilder | OrientationBuilder

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
  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    //Size screenS = MediaQuery.sizeOf(context);
    print(screenSize.width);
    print(screenSize.height);
    print(screenSize.flipped);
    print(screenSize.longestSide);
    print(screenSize.aspectRatio);

    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).navigationMode);
    print(MediaQuery.of(context).viewInsets);
    print(MediaQuery.of(context).orientation);


    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.amber,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            spacing: 8,
            runSpacing: 8,

            children: [
              ElevatedButton(onPressed: (){}, child: Text('Tap')),
              ElevatedButton(onPressed: (){}, child: Text('Tap')),ElevatedButton(onPressed: (){}, child: Text('Tap')),
              ElevatedButton(onPressed: (){}, child: Text('Tap')),
              ElevatedButton(onPressed: (){}, child: Text('Tap')),
              ElevatedButton(onPressed: (){}, child: Text('Tap')),
              ElevatedButton(onPressed: (){}, child: Text('Tap')),


            ],
          )
        ],
      )
    );
  }
}