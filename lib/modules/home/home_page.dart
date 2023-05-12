import 'package:flutter/material.dart';
import 'package:to_do_flutter/modules/home/widgets/custom_task.dart';
import 'package:to_do_flutter/modules/home/widgets/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To do'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        width: double.infinity,
        height: double.infinity,
        child: const ListOfTasks()
      ),
      bottomSheet: const CustomTask()
    );
  }
}