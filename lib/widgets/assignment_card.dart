import 'package:flutter/material.dart';

class AssignmentCard extends StatelessWidget{
  final String title;
  final String course;
  final String dueDate;
  final Color priorityColor;

  const AssignmentCard({
    super.key,
    required this.title,
    required this.course,
    required this.dueDate,
    required this.priorityColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(title),
        subtitle: Text("$course . Due $dueDate"),
        trailing: Icon(Icons.flag, color: priorityColor),
      )
    );
  }
}