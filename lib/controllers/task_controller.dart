import 'package:get/get.dart';
import 'package:task_manager/db/db_helper.dart';
import 'package:task_manager/models/task_model.dart';

class TaskController extends GetxController {
  //this will hold the data and update the ui

  @override
  void onReady() {
    getTasks();
    super.onReady();
  }

  final taskList = <Task>[].obs;

  // add data to table
  //second brackets means they are named optional parameters
  Future<int> addTask({Task? task}) async {
    return await DBHelper.insert(task!);
  }

  // get all the data from table
  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskList.assignAll(tasks.map((data) => new Task.fromJson(data)).toList());
  }

  // delete data from table
  void deleteTask(Task task) async {
    await DBHelper.delete(task);
    getTasks();
  }

  // update data int table
  void markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTasks();
  }
}
