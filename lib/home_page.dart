import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

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

  void _addTodoItem(String name) {
    setState(() {
      _todos.add(Todo(name: name, completed: false));
    });
    _textFieldController.clear();
  }

  void toggleTheme(BuildContext context) {
  AdaptiveTheme.of(context).toggleThemeMode();
}

  Future<void> _displayDialog(BuildContext context) async {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Le bac à sable de Séra'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                toggleTheme(context);
              },
              child: Text("changer theme")
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _displayDialog(context); // Pass the context to the dialog function
        },
        tooltip: 'Add a Todo',
        child: const Icon(Icons.add),
      ),
    );
  }
}