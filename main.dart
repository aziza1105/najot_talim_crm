import 'dart:io';
import './logout.dart';

class Person {
  late String name;
  late int id;
  late String password;
  Person({required this.name, required this.id, required this.password});
  set(name1, surname1, id1, password) {
    name = '$name1';
    id = id1;
    password = '$password';
  }

  Person takePerson() {
    late List lst;
    late String name1;
    late int id1;
    late String password1;
    lst = takeInformation();
    String trash = lst[2];
    id1 = int.tryParse(trash) ?? -1;
    name1 = '${lst[0]}';
    password1 = '${lst[1]}';
    Person person1 = Person(name: name1, id: id1, password: password1);
    return person1;
  }

  List takeInfromation() {
    var information = [];

    stdout.writeln('Your name : ');
    String? ism = stdin.readLineSync();
    information.add(ism);

    stdout.writeln('Your ID :');
    String? id = stdin.readLineSync();
    information.add(id);

    stdout.writeln('Your password : ');
    String? parol = stdin.readLineSync();
    information.add(parol);

    return information;
  }
}
