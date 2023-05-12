import 'package:flutter/material.dart';
import 'package:to_do_flutter/modules/home/actions/tasks.dart';

class ListOfTasks extends StatefulWidget {
  const ListOfTasks({super.key});

  @override
  State<ListOfTasks> createState() => _ListOfTasksState();
}

class _ListOfTasksState extends State<ListOfTasks> {
  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
        animation: TasksList.tasksList,
        builder: (context, child) {
          return Column(
            children: [
              for ( var task in TasksList.tasksList.tasks ) SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(value: task.done, onChanged: (value){TasksList.tasksList.handleTask(task.id);}),
                        TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero
                          ),
                          onPressed: (){TasksList.tasksList.handleTask(task.id);},
                          child: Text(task.name,style: TextStyle(decoration: task.done ? TextDecoration.lineThrough : null, fontSize: 20))),
                      ],
                    ),
                    IconButton(onPressed: () {TasksList.tasksList.removeTask(task.id);}, icon: const Icon(Icons.delete))
                  ],
                ),
              )
            ],
          ); 
        },
        
      );
  }
}