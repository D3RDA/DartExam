import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print(reverseString("hello"));
  print(reverseInteger(12345));
  print(reverseNumber(12.34));
  print(sortNumbersAsc(32145));
  print(sortNumbersDes(32145));
  print(fizzBuzz(3));
  print(fizzBuzz(5));
  print(fizzBuzz(15));
  print(fizzBuzz(7));
  print(isTriangleBySides(3, 4, 5));
  print(isTriangleBySides(1, 2, 3));
  print(isTriangleByAngles(60, 60, 60));
  print(isTriangleByAngles(0, 90, 90));
  print(triangleTypeByAngles(60, 60, 60));
  print(triangleTypeByAngles(70, 70, 40));
  print(triangleTypeByAngles(90, 45, 45));
  print(triangleTypeByAngles(100, 40, 40));
  print(triangleTypeByAngles(50, 60, 70));
  print(triangleTypeByAngles(0, 90, 90));
  print(padovanNumber(0));
  print(padovanNumber(1));
  print(padovanNumber(2));
  print(padovanNumber(3));
}

// 1. reverseString(text)
// A paraméterként kapott Stringet megfordítja éa visszadja.
String reverseString(String text) {
  return text.split('').reversed.join();
}

// 2. reverseInteger(integer)
// A paraméterként kapott egész számot megfordítja éa visszadja.
int reverseInteger(int integer) {
  String reversedString = integer.toString().split('').reversed.join();
  return int.parse(reversedString);
}

// 3. reverseNumber(number)
// A paraméterként kapott számot megfordítja éa visszadja.
double reverseNumber(double number) {
  String reversedString = number.toString().split('').reversed.join();
  return double.parse(reversedString);
}

// 4. sortNumbersAsc(integer)
// A paraméterként kapott szám számjegyeit nagyság szerint növekvően rendezi és egy egész számot ad vissza.

int sortNumbersAsc(int integer) {
  List<String> digits = integer.toString().split('');
  digits.sort();
  return int.parse(digits.join());
}
// 5. sortNumbersDes(number)
// A paraméterként kapott szám számjegyeit nagyság szerint csökkenően rendezi és egy egész számot ad vissza.

int sortNumbersDes(int integer) {
  List<String> digits = integer.toString().split('');
  digits.sort((b, a) => a.compareTo(b));
  return int.parse(digits.join());
}

// 6. fizzBuzz(integer)
// A megadott szám FizzBuzz megfelelőjét visszaadja.
// Ha a szám osztható 3-mal, akkot fFzz-t ad vissza.
// Ha a szám osztható 5-tel, akkor Buzz-t ad vissza.
// Ha a szám osztható 3-mal és 5-tel is, akkor fFzzBuzz-t ad vissza.
// Ha a szám nem osztható sem 3-mal, sem 5-tel, akkor magát a számot adja vissza.
dynamic fizzBuzz(int integer) {
  if (integer % 3 == 0 && integer % 5 == 0) {
    return "FizzBuzz";
  } else if (integer % 3 == 0) {
    return "Fizz";
  } else if (integer % 5 == 0) {
    return "Buzz";
  } else {
    return integer;
  }
}

// 7. isTriangleBySides(a, b, c)
// A függvény három számot kap paraméterül, melyek egy háromszög oldalhosszai.
// A viszatérési érték egy bool érték, azaz a megadott számok alapján létehozhatunk-e egy háromszöget a megadott oldahosszak alapján.

bool isTriangleBySides(double a, double b, double c) {
  if (a + b > c && a + c > b && b + c > a) {
    return true;
  } else {
    return false;
  }
}
// 8. isTriangleByAngles(a, b, c)
// A függvény három számot kap paraméterül, melyek egy háromszög belső szögei.
// A viszatérési érték egy bool érték, azaz a megadott számok alapján létehozhatunk-e egy háromszöget a megadott szögel alapján.

bool isTriangleByAngles(double a, double b, double c) {
  if (a + b + c == 180 && a > 0 && b > 0 && c > 0) {
    return true;
  } else {
    return false;
  }
}
// 9. triangleTypeByAngles(a, b, c)
// A függvény három számot kap paraméterül, melyek egy háromszög belső szögei.
// A viszatérési érték a háromszög típusa:
// általános háromszög
// egyenlő szárú háromszög
// egyenlő oldalú háromszög
// derékszögű háromszög
// tompaszögű háromszög
// hegyesszögű háromszög
// érvénytelen háromszög - nem alkotható háromszög a megadott szögekkel.
// https://hu.wikipedia.org/wiki/H%C3%A1romsz%C3%B6g

String triangleTypeByAngles(double a, double b, double c) {
  if (!isTriangleByAngles(a, b, c)) {
    return "érvénytelen háromszög - nem alkotható háromszög a megadott szögekkel.";
  } else if (a == 60 && b == 60 && c == 60) {
    return "egyenlő oldalú háromszög";
  } else if (a == b || b == c || a == c) {
    if (a == 90 || b == 90 || c == 90) {
      return "egyenlő szárú derékszögű háromszög";
    }
    return "egyenlő szárú háromszög";
  } else if (a == 90 || b == 90 || c == 90) {
    return "derékszögű háromszög";
  } else if (a > 90 || b > 90 || c > 90) {
    return "tompaszögű háromszög";
  } else {
    return "hegyesszögű háromszög";
  }
}
// 10. padovanNumber(integer)
// A Padovan számok képzése a Fibonacci számokhoz hasonló.
// Az első 3 szám:
// p0 = 0,
// p1 = 1,
// p2 = 1.
// Minden következő szám:
// pn = (pn - 2) + (pn - 3)
// azaz a számot megerlőző 2. és 3. szám összege.
// Az első néhány szám:
// 0, 1, 1, 1, 2, 2, 3, 4, 5, 7, 9. 12, ...
// Írj programot, mely visszaadja a paraméterül kapott szám sorszám szerinti Padovan száot.

int padovanNumber(int integer) {
  if (integer == 0) {
    return 0;
  } else if (integer == 1 || integer == 2) {
    return 1;
  } else {
    List<int> padovanList = [0, 1, 1];
    for (int i = 3; i <= integer; i++) {
      int nextPadovan =
          padovanList[i - 2] + padovanList[i - 3]; // pn = (pn - 2) + (pn - 3)
      padovanList.add(nextPadovan);
    }
    return padovanList[integer];
  }
}
