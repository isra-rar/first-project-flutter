import 'package:flutter/material.dart';

import '../componets/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task(
        'Aprender Flutter',
        'https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png',
        2),
    Task(
        'Jogar LOL',
        'http://m.lance.com.br/files/admin_slider_thumbnail/uploads/2022/08/24/6306788be292f.jpeg',
        5),
    Task(
        'Jogar APEX',
        'https://upload.wikimedia.org/wikipedia/pt/a/ad/Apex_legends_capa.jpg',
        5),
    Task(
        'Lutar JJ',
        'https://p2.trrsf.com/image/fget/cf/1200/1200/middle/images.terra.com/2022/08/01/1715230104-62e7b5db13581.jpeg',
        4),
  ];

  void newTask(String nome, int difficulty, String foto) {
    taskList.add(Task(nome, foto, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
