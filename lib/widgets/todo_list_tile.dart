import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoListTile extends StatelessWidget {
  const TodoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple.shade300,
      child: Slidable(
          endActionPane: ActionPane(motion: ScrollMotion(), children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.purple.shade600,
              icon: Icons.delete,
              label: "Delete",
            )
          ]),
          child: CheckboxListTile(
            title: Text("Program"),
            subtitle: Text("Date"),
            value: false,
            onChanged: (value) {},
          )),
    );
  }
}
