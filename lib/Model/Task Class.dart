class TaskClass {
  final String taskName;
  final String taskDescription;
  final DateTime taskDate;

  TaskClass({
    required this.taskName,
    required this.taskDescription,
    required this.taskDate
  });

  @override
  String toString() {
    return 'TaskClass{taskName: $taskName, taskDescription: $taskDescription, taskDate: $taskDate}';
  }
}
