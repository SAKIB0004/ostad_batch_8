import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_batch_8/screens/add_new_todo_screen.dart';
import 'package:ostad_batch_8/screens/update_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text('title of todo'),
              subtitle: Text('describe'),
              leading: Text('screen'),
              trailing: Wrap(
                children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
                  IconButton(onPressed:_showChangeStatusDialog, icon: const Icon(Icons.edit)),
                ],
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const UpdateTodoScreen()));
              }
              );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AddNewTodoScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showChangeStatusDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Change Status'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('Idle '),
                ),
                Divider(height: 0,),
                ListTile(
                  title: Text('In Progess'),
                ),
                Divider(height: 0,),
                ListTile(
                  title: Text('Done'),
                ),
              ],
            ),
          );
        });
  }
}
