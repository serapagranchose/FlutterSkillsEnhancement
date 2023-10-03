import 'package:flutter/material.dart';
import 'package:flutter_skills_enhancement/theme.dart';
import 'package:flutter_skills_enhancement/main.dart';

class Todo {
  Todo({required this.name, required this.completed});
  String name;
  bool completed;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _TodoListState();
}

class _TodoListState extends State<MyHomePage> {
  final List<Todo> _todos = <Todo>[];
  final TextEditingController _textFieldController = TextEditingController();
  // Add your state variables and methods here
  Future<void> _displayDialog() async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add a todo'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'Type your todo'),
            autofocus: true,
          ),
          actions: <Widget>[
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _addTodoItem(_textFieldController.text);
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }
  void _addTodoItem(String name) {
    setState(() {
      _todos.add(Todo(name: name, completed: false));
    });
    _textFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Le bac à sable de Séra'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(isDarkTheme.toString()),
            Switch(
              value: isDarkTheme,
              onChanged: (value) {
                setState(() {
                  isDarkTheme = value;
                  // Set the theme here based on isDarkTheme
                  final theme = value ? darkTheme : lightTheme;
                  // Update the app's theme
                  // TodoApp.setTheme(context, theme);
                });
              },
            ),
            // Add other widgets in the body as needed
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic here to handle the button press
          _displayDialog(); // Example function to display a dialog
        },
        tooltip: 'Add a Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}