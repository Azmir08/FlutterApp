import 'package:hive/hive.dart';

class ToDoDataBase {
  final _mybox = Hive.openBox("mybox");
}
