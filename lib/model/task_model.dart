class Task {
  final int id;
  final String taskName;

  Task({
    this.id,
    this.taskName,
  });
}

final Task item1 = Task(
  taskName: 'Academia',
);

final Task item2 = Task(
  taskName: 'Buy Apple watch',
);

final Task item3 = Task(
  taskName: 'Meetup friends',
);

final Task item4 = Task(
  taskName: 'Pickup parcel',
);
final Task item5 = Task(
  taskName: 'Grocery',
);
final Task item6 = Task(
  taskName: 'Go to Yoga',
);

final List<Task> tasks = [
  item1,
  item2,
  item3,
  item4,
  item5,
  item6
];