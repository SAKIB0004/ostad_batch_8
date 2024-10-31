import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//ListView, ListTile, gridView, form , key , GlobalKey

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

  TextEditingController _emailTEC = TextEditingController();
  TextEditingController _passwordTEC = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.amber,
      ),
      //ListView.builder
      /*body: ListView.builder(
        itemCount: friendsList.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(friendsList[index]),
            subtitle: Text("Friend no $index "),
            trailing: Icon(Icons.arrow_forward,),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            onTap: (){
              print("tapped on friend $index");
            },
            onLongPress: (){
              print("on long press on friend $index");
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 5,
            ),
            enabled: true,
            dense: false,
            titleTextStyle: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
            subtitleTextStyle: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ) ,
            // selected: false,
            // selectedColor: Colors.pink,


          );
        },
      )*/
      //GridView
      /*body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,

        ),
        children: [
          Text("sasada"),
          Text("sasada"),
          Text("sasada"),
          Text("sasada"),
          Text("sasada"),
          Text("sasada"),
          Text("sasada"),
        ],
      ),*/
      //GridView.builder
      /*body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5),
          itemCount: friendsList.length,
          itemBuilder: (context, index){
            return Center(child: Text(friendsList[index]));
          },

      ),*/

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _emailTEC,
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
                validator: (String? value){
                  if(value?.isEmpty ?? true){
                    return 'Enter your Email';
                  }
                  else return null;
                },
              ),
          
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                controller: _passwordTEC,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
                validator: (String? value){
                  if(value?.isEmpty ?? true){
                    return 'Enter your Password';
                  }
                  else return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print("Log in Success");
                    }
                  },
                      /*String email = _emailTEC.text;
                      String pass = _passwordTEC.text;

                      if(email.isNotEmpty && pass.isNotEmpty){
                        print("Log in Success");
                      }
                      else print("Missing Data");
                    },*/

                  child: Text("Tap")
              ),
          
            ],
          ),
        ),
      ),





    );
  }

}