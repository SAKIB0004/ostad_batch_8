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

  List<String> friendsList = [
    "sakib",
    "skismska1",
    "saki",
    "sassa",
    "sadasa",
    "sasad",
    "sakib",
    "sakib",
    "sakib","sakib",
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
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        shadowColor: Colors.red,
        width: 200,
        child: Column(
          children: [
            Text("Random"),
          ],
        ),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.pink.shade300,
        unselectedItemColor: Colors.blue.shade100,
        unselectedFontSize: 16,
        selectedFontSize: 22,
        showSelectedLabels: true,
        unselectedIconTheme: IconThemeData(
          color: Colors.amber.shade400
        ),
        onTap: (int selectedIndex){} ,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),*/
      bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
        onDestinationSelected: (int index) {},
        indicatorColor: Colors.pink,
        //surfaceTintColor: Colors.blue,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        shadowColor: Colors.grey.shade400,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      // body: Scrollbar(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //         Text("sakib"),
      //       ],
      //     ),
      //   ),
      // ),

      body: Scrollbar(
        thickness: 10,
        radius: Radius.circular(10),
        interactive: true,
        /*child: ListView(
            children: [
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
              Text("sakib"),
            ],
          ),*/
        // child: ListView.builder(
        //     itemCount: 100,
        //     itemBuilder: (context, index) {
        //       return Text("Iteem");
        //     })
        child: ListView.builder(
            itemCount: friendsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(10),
                child: Text(friendsList[index]),
              );
            }),
      ),
    );
  }
}
