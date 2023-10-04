import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:to_do_app/constants/color.dart';
import 'package:to_do_app/constants/tasktype.dart';
import 'package:to_do_app/models/task.dart';

class TodoItem extends StatefulWidget {
  const TodoItem({super.key, required this.task});
  final Task task;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        side: BorderSide(color: HexColor(borderColor)),
      ),
      child: Opacity(
        opacity: widget.task.isCompleted ? 0.5 : 1.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              widget.task.type == TaskType.note
                  ? Image.asset("lib/assets/images/category_1.png")
                  : widget.task.type == TaskType.calendar
                      ? Image.asset("lib/assets/images/category_2.png")
                      : Image.asset("lib/assets/images/category_3.png"),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      widget.task.title,
                      style: TextStyle(
                        decoration: widget.task.isCompleted
                            ? TextDecoration.lineThrough
                            : TextDecoration.none,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                    Text(
                      widget.task.description,
                      style: TextStyle(
                          decoration: widget.task.isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none),
                    )
                  ],
                ),
              ),
              Checkbox(
                value: isCheck,
                onChanged: (val) => {
                  setState(
                    () {
                      widget.task.isCompleted = !widget.task.isCompleted;
                      isCheck = val!;
                    },
                  )
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
