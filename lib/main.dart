import 'dart:io';
import 'package:flutter/material.dart';

/// Named Navigation , Stateful widget
void main() {
  runApp(SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => Home(),
        '/profile': (context) => Profile(),
        '/settings': (context) => Settings(),
      },
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder:(context)=>Profile(),),);

              Navigator.pushNamed(context, '/profile');
            },
            child: Text('Go to profile'),
          )
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //   MaterialPageRoute(builder:(context)=>Settings(),),);
                Navigator.pushNamed(context, '/settings');
              },
              child: Text('Go to Settings'))
        ],
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //   MaterialPageRoute(builder:(context)=>Home(),),);

                //Navigator.pushNamed(context, '/home');

                //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>Home(),), (predicate)=>false);

                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (predicate) => false);
              },
              child: Text('Go to Home'))
        ],
      ),
    );
  }
}


// class CounterScreen extends StatelessWidget {
//   CounterScreen({super.key});
//
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter'),
//       ),
//       body: Center(
//         child: Text('Counter value is $counter'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counter = counter + 1;
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class CounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text('Counter value is $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter = counter + 1;
          print(counter);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
