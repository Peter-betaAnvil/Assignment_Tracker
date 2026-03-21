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

          ]
        )
      )
    );
  }
}