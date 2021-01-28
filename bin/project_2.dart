import 'dart:io';

import 'package:project_2/project_2.dart' as project_2;

void main(List<String> arguments) {
  print('Enter ');
  String v = stdin.readLineSync();
  print(v);
  print('Hello world: ${project_2.calculate()}!');
}
