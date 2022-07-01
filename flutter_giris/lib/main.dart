// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var employees = [
      "Batın Berkin",
      "Ahmet Berke",
      "Zeynep",
      "Hasret",
      "Ali Veli"
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(SayHi() + " " + employees[3] + " " + "Berkay"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: employees.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(employees[index]);
              },
            ),
          ),
          Center(
            child: RaisedButton(
              child: Text("Show the employee"),
              onPressed: () {
                int grade = 50;
                String message = "";

                if (grade >= 50) {
                  message = "Congraculations! You passed the exam!";
                } else if (grade >= 40) {
                  message = "You have ONE MORE CHANCE!";
                } else {
                  message = "Sorry! You failed";
                }

                var alert = AlertDialog(
                  title: Text("Exam Result"),
                  content: Text(message),
                );
                showDialog(
                    context: context, builder: (BuildContext context) => alert);
              },
            ),
          ),
        ],
      ),
    );
  }
}

String SayHi() {
  DateTime now = new DateTime.now();
  int hour = now.hour;

  if (hour < 12) {
    return "Good Morning";
  } else if (hour < 18) {
    return "Good Evening";
  } else {
    return "Good Night";
  }
}
