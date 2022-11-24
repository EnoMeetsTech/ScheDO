import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  final _schedobox = Hive.box('schedobox');

  void createInitialData() {
    toDoList = [
      ['Feed the cat.', true],
      ['Work Out', false]
    ];
  }

  void loadData() {
    toDoList = _schedobox.get('TODOLIST');
  }

  void uploadDataBase() {
    _schedobox.put('TODOLIST', toDoList);
  }
}
