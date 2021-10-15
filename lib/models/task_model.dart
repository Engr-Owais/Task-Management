class Task {
  int? id;
  String? title;
  String? note;
  int? isCompleted;
  String? date;
  String? startTime;
  String? endTime;
  int? color;
  int? remind;
  String? repeat;

  Task({
    this.id,
    this.title,
    this.color,
    this.date,
    this.endTime,
    this.isCompleted,
    this.note,
    this.remind,
    this.repeat,
    this.startTime,
  });

  Task.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    isCompleted = json['isCompleted'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    date = json['date'];
    remind = json['remind'];
    color = json['color'];
    note = json['note'];
    repeat = json['repeat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['isCompleted'] = this.isCompleted;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['date'] = this.date;
    data['remind'] = this.remind;
    data['color'] = this.color;
    data['note'] = this.note;
    data['repeat'] = this.repeat;
    return data;
  }
}
