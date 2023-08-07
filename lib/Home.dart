import 'package:flutter_ui_design_ashik_miah/Task.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(child: Column(
            children: [
              Text("Welcome To"),
              Text('Plan IT',style: TextStyle(fontSize: 46,fontWeight: FontWeight.bold), )
            ],
          ),

            height: 110,
            width: 300,

          )
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Your personal task management and planning solution',textAlign: TextAlign.center,style: TextStyle(fontSize: 18, ),
          ),
          Container(
            width: 160,
            height: 50,
            margin: EdgeInsets.only(bottom: 50,top: 25),

            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Task()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),

              ),
              child: Text("Let's Get Started"),
            ),
          ),

        ],
      ),

    );
  }
}