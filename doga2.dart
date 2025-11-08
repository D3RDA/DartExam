import 'dart:math';
import 'dart:io';
// 1. Sum Arrays
// Írj egy olyan függvényt, amely egy számokból álló tömböt vesz fel, és a számok összegét adja vissza. A számok lehetnek negatívak vagy nem egész számok. Ha a tömb nem tartalmaz számokat, akkor 0-t kell visszaadnia.

num sum(List<num> arr) {
  num total = 0;
  for (var num in arr) {
    total += num;
  }
  return total;
}
// 2. Odd Ones Out
// Kapsz egy számlistát. A számok mindegyike bizonyos számúszor ismétlődik. Távolítsd el az összes olyan számot, amely páratlanul ismétlődik, miközben minden más számot változatlanul hagysz.

List<int> oddOnesOut(List<int> nums) {
  Map<int, int> Lista = {};
  for (var num in nums) {
    if (Lista.containsKey(num)) {
      Lista[num] = Lista[num]! + 1;
    } else {
      Lista[num] = 1;
    }
  }
  List<int> result = [];
  for (var num in nums) {
    if (Lista[num]! % 2 == 0) {
      result.add(num);
    }
  }
  return result;
}

// 3. Flatten and sort an array
// Egész számok kétdimenziós tömbje esetén adja vissza a tömb lapított változatát, amely az összes egész számot rendezett (növekvő) sorrendben tartalmazza.

List<int> flattenAndSort(List<List<int>> nums) {
  List<int> flatList = [];
  for (var list in nums) {
    flatList.addAll(list);
  }
  flatList.sort();
  return flatList;
}

// 4.Counting Duplicates
// Írjon egy függvényt, amely visszaadja a bemeneti karakterláncban többször előforduló, különálló, nagy- és kisbetűket nem érzékelő alfabetikus karakterek és numerikus számjegyek számát. Feltételezhető, hogy a bemeneti karakterlánc csak betűket (kis- és nagybetűket egyaránt) és számjegyeket tartalmaz.

int duplicateCount(String text) {
  Map<String, int> charCount = {};
  String lowerText = text.toLowerCase();
  for (var char in lowerText.split('')) {
    if (charCount.containsKey(char)) {
      charCount[char] = charCount[char]! + 1;
    } else {
      charCount[char] = 1;
    }
  }
  int duplicates = 0;
  charCount.forEach((key, value) {
    if (value > 1) {
      duplicates++;
    }
  });
  return duplicates;
}

void main() {
  print("1. feladat tesztelése:");
  print("Egész számok: ${sum([1, 2, 3, 4, 5])}");
  print("Minusz számok: ${sum([-1, -2, -3, -4, -5])} ");
  print("Tört számok: ${sum([1.5, 2.5, 3.5])}");
  print("Vegyes számok: ${sum([1, -2, 3.5, -4.5])}");
  print("Üres tömb: ${sum([])}");
  print("\n2. feladat tesztelése:");
  print("Eredmény: ${oddOnesOut([1, 2, 3, 2, 4, 3, 8, 1, 6, 5, 6, 7])}");
  print("\n3. feladat tesztelése:");
  print(
    "Eredmény: ${flattenAndSort([
      [3, 2, 1],
      [4, 6, 5],
      [],
      [9, 7, 8],
    ])}",
  );
  print("\n4. feladat tesztelése:");
  print("Eredmény: ${duplicateCount('22aA11')}");
  print("Eredmény: ${duplicateCount('abcde')}");
  print("Eredmény: ${duplicateCount('aabbcde')}");
}
