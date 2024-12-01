import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CupertinoExpApp());
}

class CupertinoExpApp extends StatelessWidget {
  const CupertinoExpApp({super.key});

  @override
  Widget build(BuildContext context) {

    if(Platform.isIOS){
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        title: 'Experiment app',
        home: Home(),
      );
    }
    else{
      return MaterialApp(
        home: Home(),
      );
    }

  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

        navigationBar: CupertinoNavigationBar(
          middle: Text("Home"),
          trailing: Icon(CupertinoIcons.add),
          leading: Icon(CupertinoIcons.arrow_down),

        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CupertinoButton.filled(
              borderRadius: BorderRadius.circular(16),
                child: Text('tap'),
                onPressed: (){}
            ),

            CupertinoListTile(
              title: Text('Title'),
              backgroundColor: Colors.black,
              subtitle: Text('Subtitle'),
              trailing: Icon(CupertinoIcons.add_circled),
            ),
            CupertinoTextField(),
            CupertinoSwitch(value: false, onChanged: (value){})

          ],
        )
    );
  }
}

