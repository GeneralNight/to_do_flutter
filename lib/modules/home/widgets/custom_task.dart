import 'package:flutter/material.dart';
import 'package:to_do_flutter/modules/home/actions/tasks.dart';

class CustomTask extends StatefulWidget {
  const CustomTask({super.key});

  @override
  State<CustomTask> createState() => _CustomTaskState();
}

class _CustomTaskState extends State<CustomTask> {

  final taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: TextField(
              keyboardType: TextInputType.text,
              controller: taskController,
              decoration: const InputDecoration(
                labelText: 'Task'
              ),) ),    
            Container(              
              width: 40,
              height: 40,
              decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: IconButton.filled(
                icon: const Icon(Icons.add,color: Colors.white),
                padding: const EdgeInsets.all(5.0),
                onPressed: () {
                  TasksList.tasksList.addTask(taskController.value.text);
                  taskController.clear();                  
                },
              ),
            )
          ],
        ),
      )
    );
  }
}