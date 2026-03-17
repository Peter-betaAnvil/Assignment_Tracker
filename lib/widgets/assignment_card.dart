import 'package:flutter/material.dart';

class AssignmentCard extends StatelessWidget{
  final String title;
  final String course;
  final String dueDate;
  final String priority;

  const AssignmentCard({
    super.key,
    required this.title,
    required this.course,
    required this.dueDate,
    required this.priority,
  });

  Color  getPriorityColor(){
    switch(priority) {
      case "High":
        return Colors.red;
      case "Medium":
        return Colors.orange;
      default:
        return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        children: [
          //priority indicator bar
          Container(
            width: 6,
            height: 60,
            decoration: BoxDecoration(
              color: getPriorityColor(),
              borderRadius: BorderRadius.circular(8),
            ),
          ),

          const SizedBox(width: 12,),

          //Text section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4,),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height:6,),
                Text(
                  "Due $dueDate",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          //priority badge
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 4,
            ),
            decoration: BoxDecoration(
              color: getPriorityColor().withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              priority,
              style: TextStyle(
                color: getPriorityColor(),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}