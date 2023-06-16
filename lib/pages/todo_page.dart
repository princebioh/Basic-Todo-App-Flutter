import 'package:flutter/material.dart';
import 'package:todo_app/widgets/todo_list_tile.dart';

import '../defaults/app_backgroung_color.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: MainBackgroundColor.color,
        ),
        child: Center(
            child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    splashRadius: 15,
                    splashColor: Colors.white,
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.logout),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  "Prince Todo List",
                  style: TextStyle(
                    fontSize: 46,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return TodoListTile();
                  },
                ),
              ))
            ],
          ),
        )),
      ),
    );
  }
}
