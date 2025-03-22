import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import '../models/todo.dart';
import '../widgets/todo_list.dart';
import '../widgets/todo_form.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Todo> _todos = [];
  final _uuid = const Uuid();

  void _addTodo(String title) {
    setState(() {
      _todos.add(Todo(id: _uuid.v4(), title: title));
    });
  }

  void _toggleTodo(Todo todo) {
    setState(() {
      final index = _todos.indexWhere((t) => t.id == todo.id);
      if (index != -1) {
        _todos[index] = todo;
      }
    });
  }

  void _deleteTodo(String id) {
    setState(() {
      _todos.removeWhere((todo) => todo.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          TodoForm(onSubmit: _addTodo),
          Expanded(
            child:
                _todos.isEmpty
                    ? const Center(
                      child: Text(
                        'No todos yet. Add some!',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    )
                    : TodoList(
                      todos: _todos,
                      onDelete: _deleteTodo,
                      onToggle: _toggleTodo,
                    ),
          ),
        ],
      ),
    );
  }
}
