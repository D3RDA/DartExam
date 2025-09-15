import 'dart:io';

void main() {
  print("Derda Dominik");
  print('Kiíratás aposztróffal.');
  print('''
Egyszer volt
hol nem volt


Még nyílnak a völgyben
a kerti virágok ...

''');
// print('Ez a sor megjegyzésas');

  var nev = 'Adam family';
  print(nev);
  print('A megadott név: $nev');
  print('A megadott név hossza ${nev.length}');
  String fname = 'Joe';
  String lname = "Doe";
  print('Your full name is: $fname $lname');
  int egesz = 13;
  double pi = 3.14159226;
  bool logikai = true;
  print('Az egész szám: $egesz');
  print('A pi: $pi');
  print('A logikai érték: $logikai');
  dynamic valami = "egy";
  print(valami);
  valami = 1;
  print(valami);
  String teljesNev = "Derda Dominik";

  print("Enter name:");
  String myName = stdin.readLineSync()!;    // ? lehet null ! nem lehet null
  print("The entered name is ${myName}");
}
