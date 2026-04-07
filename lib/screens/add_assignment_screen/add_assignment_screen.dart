import 'package:flutter/material.dart';

class AddAssignmentScreen extends StatefulWidget {
  const AddAssignmentScreen({super.key});

  @override
  State<AddAssignmentScreen> createState() => _AddAssignmentScreenState();
}

class _AddAssignmentScreenState extends State<AddAssignmentScreen> {

  final TextEditingController titleController = TextEditingController();
  final TextEditingController courseController = TextEditingController();

  String priority = "Medium";
  DateTime? selectDate;

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

            const SizedBox(height: 17),

            TextField(
              decoration: const InputDecoration(
                labelText: "Course",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),

            DropdownButtonFormField(
              value: priority,
              items:[
                "High",
                "Medium",
                "Low"
              ].map((level) => DropdownMenuItem(
                value: level,
                child: Text(level),
              ))
              .toList(),
              onChanged: (value) {
                setState(() {
                  priority = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: "Priority",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),
            // pre button validation
            
          ]
        )
      )
    );
  }
}