import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_batch_8/screens/todo.dart';

class UpdateTodoScreen extends StatefulWidget {
  const UpdateTodoScreen({super.key , required this.todo, required this.onUpdateTodo});

  final Todo todo;

  final Function(Todo) onUpdateTodo;

  @override
  State<UpdateTodoScreen> createState() => _UpdateTodoScreenState();
}

class _UpdateTodoScreenState extends State<UpdateTodoScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void initState(){
    super.initState();
    _titleTEController.text = widget.todo.title;
    _descriptionTEController.text = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update TO DO'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _titleTEController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      labelText: 'Title', hintText: 'Write your title'),
                  validator: (String? value){
                    if(value == null || value.trim().isEmpty){
                      return 'Enter ur title';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _descriptionTEController,
                  maxLines: 3,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      labelText: 'Description',
                      hintText: 'Write your Description'),
                  validator: (String? value){
                    if(value == null || value.trim().isEmpty){
                      return 'Enter ur Description';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()){
                        Todo todo = Todo(
                            title:_titleTEController.text.trim(),
                            description: _descriptionTEController.text.trim(),
                            status: widget.todo.status
                        );
                        widget.onUpdateTodo(todo);
                        Navigator.pop(context);
                      }
                    },
                    child: Text('Update'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
