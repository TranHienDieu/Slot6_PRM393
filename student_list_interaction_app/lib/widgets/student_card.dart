
import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentCard extends StatelessWidget {
  final Student student;
  final VoidCallback onTap;

  const StudentCard({
    Key? key,
    required this.student,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(student.name[0]),
        ),
        title: Text(student.name),
        subtitle: Text('Mã SV: ${student.id}'),
        trailing: Icon(
          student.isSelected
              ? Icons.check_circle
              : Icons.circle_outlined,
          color: student.isSelected
              ? Colors.green
              : Colors.grey,
        ),
        onTap: onTap,
      ),
    );
  }
}