import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///Navigation

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return profile();
                      },
                    ),
                  );
                },
                child: Text("Go to profile"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context){
                      return settings(username: "Sakib");
                    },
                  ),
                );
              },
              child: Text("Go to Settings"),
            )
          ],
        ),
      )

    );
  }
}

//navigation
//Route
//route to route navigation
//navigator

class profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.green,
      ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                      context,
                    MaterialPageRoute(builder: (context)=>home())
                  );
                },
                child: Text("Go to home"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return settings(username: "Minhaj");
                      },
                    ),
                  );
                },
                child: Text("Go to Settings"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("Back"),
              )
            ],
          ),
        )


    );
  }
}

class settings extends StatelessWidget {
  const settings({super.key,required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Settings"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(username),
              SizedBox(height: 100,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context){
                        return profile();
                      },
                    ),
                  );
                },
                child: Text("Go to profile"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context)=>home())
                  );
                },
                child: Text("Go to home"),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context)=>home()),
                      (predicate) => false,
                  );
                },
                child: Text("Back to home"),
              )
            ],
          ),
        )
    );
  }
}
