import 'package:flutter/material.dart';
import 'package:assignment_tracker/widgets/assignment_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment Tracker"),
        centerTitle: true,
      ) ,

      body: Container(
        color: const Color(0xFFF5F7FB),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsetsGeometry.all(12),
                  child: Text("Upcoming Assignments",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ],
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: const[
                  AssignmentCard(
                    title: "Linked List Report",
                    course: "CSC 201",
                    dueDate: "March 25",
                    priority: "High",
                  ),
                  AssignmentCard(
                    title: "Integration Assignment",
                    course: "MTH 203",
                    dueDate: "March 27",
                    priority: "Medium",
                  )
                ],
              ),
            ),
          ],
        )
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      )
      );
  }
}