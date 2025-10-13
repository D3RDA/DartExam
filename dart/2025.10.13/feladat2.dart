import 'dart:io';
import 'dart:math';

// 1. Hozd létre a fixList fix 10 elemű listát, melynek az értékei 0-k, majd minden páratlan indesű elemet cseréld 1-re!
void main() {
  List<int> fixList = List.filled(10, 0);
  for (int i = 0; i < fixList.length; i++) {
    if (i % 2 != 0) {
      fixList[i] = 1;
    }
  }
  print(fixList);
  // 2. Hozd létre a list listát, melynek páros indexhelyein 1, a páratlan indexen 0 szerepel.
  List<int> list = [];
  for (int i = 0; i < 10; i++) {
    if (i % 2 == 0) {
      list.add(1);
    } else {
      list.add(0);
    }
  }
  print(list);
  // 3. Hozd létre a fiboList listát és töltsd fel a 30-nál kisebb Fibonacci számokkal!
  List<int> fiboList = [0, 1];
  int nextFibo = 1;
  while (nextFibo < 30) {
    fiboList.add(nextFibo);
    nextFibo = fiboList[fiboList.length - 1] + fiboList[fiboList.length - 2];
  }

  // Írasd ki a fiboList-et
  print("A Fibonacci számok: $fiboList");

  // Írasd ki a hosszát!
  print("A Fibonacci számok hossza: ${fiboList.length}");

  // Írasd ki az első elemét!
  print("A Fibonacci számok első eleme: ${fiboList.first}");

  // Írasd ki az utolsó elemét!
  print("A Fibonacci számok utolsó eleme: ${fiboList.last}");

  // Írasd ki a 3-as indexű elemet!
  print("A Fibonacci számok 3-as indexű eleme: ${fiboList[3]}");

  // Írasd ki a 8 indexét (vagyis az érték 8 helyét)!
  print("A Fibonacci számokban a '8' indexe: ${fiboList.indexOf(8)}");

  // Írasd ki a fiboList elemeit fordított sorrendben!
  print(
    "A Fibonacci számok fordított sorrendben: ${fiboList.reversed.toList()}",
  );

  // Írasd ki, hogy nem üres-e a fiboList!
  print("A Fibonacci számok nem üres-e: ${fiboList.isNotEmpty}");

  // Töröld az összes elemét, és nézd meg, üres-e!
  fiboList.clear();
  print("A Fibonacci számok törlése után üres-e: ${fiboList.isEmpty}");

  // Add hozzá a 34-et!
  fiboList.add(34);
  print("A Fibonacci számokhoz hozzáadva a '34': $fiboList");

  // Add hozzá a [1, 2, 3, 5, 7] listát és írasd ki!
  fiboList.addAll([1, 2, 3, 5, 7]);
  print("A Fibonacci számokhoz hozzáadva a [1,2,3,5,7]: $fiboList");

  // Szúrd be a 34 után a [0, 1] listát és írasd ki!
  fiboList.insertAll(fiboList.indexOf(34) + 1, [0, 1]);
  print("A Fibonacci számokhoz hozzáadva a [0,1] a '34' után: $fiboList");

  // Cseréld le az utolsó elemet az alábbi listára: [8, 13, 21] és írasd ki!
  fiboList.removeLast();
  fiboList.addAll([8, 13, 21]);
  print("A Fibonacci számok utolsó eleme lecserélve [8,13,21]-re: $fiboList");

  // Töröld az első elemet a listában és írasd ki a listát!
  fiboList.removeAt(0);
  print("A Fibonacci számok első eleme törölve: $fiboList");
  // 5. Hozd létre a fiboSquare listát a fiboListből, úgy, hogy az értékei a FiboList négyzetei legyenek!
  List<int> fiboSquare = fiboList.map((e) => e * e).toList();
  print("A Fibonacci számok négyzetei: $fiboSquare");
  // 6. Hozd létre az allFibo listát, mely a fiboList és fiboquare páratlan elemeit tartalmazza csökkenő sorrendben!
  List<int> allFibo = [];
  for (var i in fiboList) {
    if (i % 2 != 0) {
      allFibo.add(i);
    }
  }
  for (var i in fiboSquare) {
    if (i % 2 != 0) {
      allFibo.add(i);
    }
  }
  allFibo.sort((b, a) => a.compareTo(b));
  print(
    "A Fibonacci számok és négyzeteik páratlan elemei csökkenő sorrendben: $allFibo",
  );
}
