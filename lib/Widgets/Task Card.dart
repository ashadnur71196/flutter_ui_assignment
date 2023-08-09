import 'package:flutter/material.dart';

class TaskCard extends StatefulWidget {
  final String taskName;
  final String taskDescription;
  final DateTime taskDate;

  const TaskCard({
    Key? key,
    required this.taskName,
    required this.taskDescription,
    required this.taskDate}
      ): super(key: key);

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.taskName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(widget.taskDescription, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
          Align(
            alignment: Alignment.centerRight,
            child: Text(widget.taskDate.toString().split(".")[0])),
        ],

      ),
    );
  }
}
class TaskCardTwo extends StatelessWidget {
  final String taskName;
  final String taskDescription;
  final DateTime taskDate;
  final int index;

  const TaskCardTwo({
    Key? key,
    required this.taskName,
    required this.taskDescription,
    required this.taskDate,
    required this.index,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, right: 10, left: 5),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          CircleAvatar(
            child: Text((index+1).toString(),
            style: TextStyle(color:Colors.black, fontSize: 20, fontWeight: FontWeight.bold,)),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(taskName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text(taskDescription, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(taskDate.toString().split(".")[0]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
