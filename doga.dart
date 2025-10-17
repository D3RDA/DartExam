// 1. feladat
// String headTail(Strint txt) {}
// A függvény egy sztinget kap paraméterül. Ezt a sztringet a felénél meg kell cserélni és visszaadni.
import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  //1. feladat
  print('\x1B[31m1.Feladat\x1B[0m');
  stdout.write("Kérem a szöveget: ");
  String resault = stdin.readLineSync()!;
  stdout.write("A forditott szöveg: ");
  print(headTail(resault));
  //2. feladat
  print('\x1B[31m2.Feladat\x1B[0m');
  print(evenFizz(4));
  print(evenFizz(9));
  print(evenFizz(12));
  print(evenFizz(17));
  //3. feladat
  print('\x1B[31m3.Feladat\x1B[0m');
  print(likeFibo(0));
  print(likeFibo(1));
  print(likeFibo(3));
  print(likeFibo(10));
  //4. feladat
  print('\x1B[31m4.Feladat\x1B[0m');
  print(vowelLower("alma"));
  print(vowelLower("ablak"));
}

String headTail(String txt) {
  int len = txt.length;
  double mid = len / 2;
  String elsoFel = txt.substring(0, mid.floor());
  String masodikFel = txt.substring(mid.floor(), len);
  return masodikFel + elsoFel;
}

// 2. feladat
// String evenFizz(int number) {}
// A függvény egy egész számot kap, mely
// ha osztható 2-vel, akkor Even-t ad vissza,
// ha osztható 3-mal, akkor Fizz-t ad vissza,
// ha 2-vel és 3-mal is osztható, akkor EvenFizz-t ad vissza,
// ha sem 2-vel, sem 3-mal nem osztható, akkor a számot, mint sztring adja vissza.
// Példa:
// evenFizz(4) --> "Even"
// evenFizz(9) --> "Fizz"
// evenFizz(12) --> "EvenFizz"
// evenFizz(17) --> "17"

String evenFizz(int number) {
  if (number % 2 == 0 && number % 3 == 0) {
    return "EvenFizz";
  }
  if (number % 2 == 0) {
    return "Even";
  }
  if (number % 3 == 0) {
    return "Fizz";
  }
  {
    return number.toString();
  }
}

// 3. feladat
// List<int> likeFibo(int number) {}
// A függvény egy egész számot kap és egy tömböt kell visszaadni egész számokkal, mely a megadott hosszúsággal rendelkezik.
// Az első 3 szám: 0, 1, 1
// A képzési szabály:
// A következő elem az utolsó és a kettővel előtti összege:
// kn = kn-1 + kn-3
List<int> likeFibo(int number) {
  List<int> result = [];
  for (int i = 0; i < number; i++) {
    if (i == 0) {
      result.add(0);
    } else if (i == 1 || i == 2 || i == 3) {
      result.add(1);
    } else {
      int nextValue = result[i - 1] + result[i - 3];
      result.add(nextValue);
    }
  }
  return result;
}

// 4. feladat
// String vowelLower(String txt) {}
// A fügvény egy szrtinget kap és a szöveget nagybetűssé konvertálja, kivéve a magánhangókat, melyek kisbetűsek lesznek.
// Az így kapott sztringet visszaadja.
// Példa:
// vowelLower("alma") --> "aLMa"
// vowelLower("ablak") --> "aBLaK"
String vowelLower(String txt) {
  String result = "";
  String maganhangzok = "aeiouAEIOU";
  for (int i = 0; i < txt.length; i++) {
    String char = txt[i];
    if (maganhangzok.contains(char)) {
      result += char.toLowerCase();
    } else {
      result += char.toUpperCase();
    }
  }
  return result;
}
