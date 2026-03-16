import 'package:flutter/material.dart';
import 'package:assignment_tracker/widget/assignment_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment Tracker"),
        centerTitle: true,
      ) ,

      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const[
          AssignmentCard(
            title: "Linked List Report",
            course: "CSC 201",
            dueDate: "March 25",
            priorityColor: Colors.red,
          ),
          AssignmentCard(
            title: "Integration Assignment",
            course: "MTH 203",
            dueDate: "March 27",
            priorityColor: Colors.orange,
          )
        ],
      ),

      floatingActionButton: FloatinActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      )
      );
  }
}