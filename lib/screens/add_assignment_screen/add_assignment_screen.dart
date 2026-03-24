import 'package:flutter/material.dart';

class AddAssignmentScreen extends StatefulWidget {
  const AddAssignmentScreen({super.key});

  @override
  State<AddAssignmentScreen> createState() => _AddAssignmentScreenState();
}

class _AddAssignmentScreenState extends State<AddAssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Add Assignment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:[
            TextField(
              decoration: const InputDecoration(
                labelText: "Assignment Title",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              decoration: const InputDecoration(
                labelText: "Course",
                border: OutlineInputBorder(),
              ),
            ),
          ]
        )
      )
    );
  }
}