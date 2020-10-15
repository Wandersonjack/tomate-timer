class Task {
  final int id;
  final String taskName;
  bool taskStatus;
  Task({
    this.id,
    this.taskName,
    this.taskStatus,
  });
}

final Task item1 = Task(
  taskName: 'Academia',
  taskStatus: false,
);

final Task item2 = Task(
  taskName: 'Buy Apple watch',
  taskStatus: false,
);

final Task item3 = Task(
  taskName: 'Meetup friends',
  taskStatus: false,
);

final Task item4 = Task(
  taskName: 'Pickup parcel',
  taskStatus: false,
);
final Task item5 = Task(
  taskName: 'Grocery',
  taskStatus: false,
);
final Task item6 = Task(
  taskName: 'Go to Yoga',
  taskStatus: false,
);

final List<Task> tasks = [
  item1,
  item2,
  item3,
  item4,
  item5,
  item6
];