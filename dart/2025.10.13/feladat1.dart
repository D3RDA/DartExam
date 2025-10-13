import 'dart:math';
import 'dart:io';

// Feladat:
// 1. Hozz létre egy programot, melyben a fullName függvény meghívja getName függvényt és bekéri a felhasználó vezetés, utónevét és a teljes nevet adja vissza!
// Függvények:
// - fullName
// - getName
void main() {
  print(fullName());
}

String fullName() {
  String name = getName("Kérem a vezetéknevet: ");
  String lname = getName("Kérem az utónevet: ");
  return "A teljes név: $name $lname";
}

String getName(String question) {
  print(question);
  String name = stdin.readLineSync()!;
  return name;
}

// 2. Hozz létre egy programot, mely a, b, c élek megadásával egy téglatest felszívét, térfogatát, lapjainak nagyságát számolja ki különböző függvények segítségével!
// Függvények:
// - terfogat
// - felulet
// - abTerulete
// - acTerulete
// - bcTerulete
// A program írja ki a lapok nagyságát, a felszínt és a térfogatot.
void main2() {
  print("Kérem az (a) hosszát: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Kérem a (b) hosszát: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Kérem a (c) hosszát: ");
  int c = int.parse(stdin.readLineSync()!);
  print("A téglatest felszíne: ${felulet(a, b, c)}");
  print("A téglatest térfogata: ${terfogat(a, b, c)}");
  print("Az ab lap területe: ${abTerulete(a, b)}");
  print("Az ac lap területe: ${acTerulete(a, c)}");
  print("A bc lap területe: ${bcTerulete(b, c)}");
}

int terfogat(int a, int b, int c) {
  return a * b * c;
}

int felulet(int a, int b, int c) {
  return 2 * (abTerulete(a, b) + acTerulete(a, c) + bcTerulete(b, c));
}

int abTerulete(int a, int b) {
  return a * b;
}

int acTerulete(int a, int c) {
  return a * c;
}

int bcTerulete(int b, int c) {
  return b * c;
}

// 3. Hozz létre egy programot, mely a felhasználótól bekér egy tizedes számot. A program egy egyenes kúp felszínét és térfogatát számolja ki.
// A kúp alapjának sugara és a kúp magassága a megadott szám.
// Függvények:
// - kupTerfogat
// - kupFelszin
double kupTerfogat(double r, double m) {
  return (3.14 * r * r * m) / 3;
}

double kupFelszin(double r, double m) {
  double s = (r * r) + (m * m);
  s = sqrt(s);
  return 3.14 * r * (r + s);
}

void main3() {
  print("Kérem a kúp alapjának sugarát: ");
  double r = double.parse(stdin.readLineSync()!);
  print("Kérem a kúp magasságát: ");
  double m = double.parse(stdin.readLineSync()!);
  print("A kúp térfogata: ${kupTerfogat(r, m)}");
  print("A kúp felszíne: ${kupFelszin(r, m)}");
}
