import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tito_done/constants/colors.dart';
import 'package:tito_done/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final onToDoChanged;
  final onDeleteItem;
  final ToDo todo;
  ToDoItem(
      {super.key,
      required this.todo,
      required this.onDeleteItem,
      required this.onToDoChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListTile(
      onTap: () {
        onToDoChanged(todo);
      },
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      tileColor: Colors.white,
      leading: Icon(
        todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
        color: tdBlue,
      ),
      title: Text(
        todo.todoText!,
        style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null),
      ),
      trailing: Container(
          height: 35,
          width: 35,
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            iconSize: 18,
            onPressed: () {
              onDeleteItem(todo.id);
            },
            icon: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          )),
    ));
  }
}
