import 'package:flutter/material.dart';

class TaskInfo {
  String name;
  String description;
  String date;


  TaskInfo({required this.name, required this.description, required this.date});
}

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  List<TaskInfo> tasks = [];
  int taskCounter = 1;



  void _addTask() {
    //String name = 'Task One';
    String name = 'Task $taskCounter';
    String description = 'Your personal task management and planning solution for planning your day, week and months';
    String date = "2.55 on 25th May, 2023";
    setState(() {
      tasks.add(TaskInfo(name: name, description: description, date: date));
      taskCounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Board', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.white,

      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue, // Change the color to your desired background color
            elevation: 2.0,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),

            child: ListTile(

              title: Text(tasks[index].name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tasks[index].description),
                  SizedBox(height: 8),
                  Text(tasks[index].date),
                ],
              ),
              //subtitle: Text(tasks[index].description),


              contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            ),


          );

        },

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: CircleBorder(eccentricity: 1),
        onPressed: _addTask,
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}