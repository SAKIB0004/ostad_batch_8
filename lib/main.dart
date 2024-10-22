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
          children: [
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                      barrierColor: Colors.grey.shade200,
                      backgroundColor: Colors.amber.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      isScrollControlled: true,
                      useSafeArea: true,
                      enableDrag: true,
                      context: context,
                      builder: (cxt){
                        return Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Title", style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.green,
                                    //backgroundColor: Colors.amberAccent,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  ),

                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 10,
                            ),
                            Text("modal bottom sheet"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 50,),
                                ElevatedButton(onPressed: (){}, child: Text("Button"))
                              ],
                            ),
                          ],
                        );
                      }
                  );
                },
                child: Text("Show dialog"),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                maxLength: 100,
                onChanged: (String? value){
                  print(value);
                },
                controller: TextEditingController(),
                //obscureText: true,
                maxLines: 1,
                keyboardType: TextInputType.phone,
                enabled: true,
                decoration: InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500,
                  ),
                  //labelText: "Phone Number",
                  label: Icon(Icons.phone),
                  prefix: Icon(Icons.phone_enabled),
                  suffix: Icon(Icons.person),
                  counterText: " ",
                  filled: true,
                  fillColor: Colors.white54,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.amber,width: 4
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.amber,width: 4
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey, width: 4,
                    )
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}