void main() {
  int intValue = 12;
  double doubleValue = 12.1212;
  String StrValue = "Valami";
  bool boolValue = true;

  var newValue = intValue + doubleValue;

  print("1: $newValue");                // double + int = double
  print("2: ${newValue.toInt()}");      // double -> int

  print(
      "3: Ez itt egy $intValue int,\n és ez egy double $doubleValue,\n ami akár lehet string is: $StrValue,\n vagy akár bool $boolValue.");

  bool boolNegat = !boolValue;
  print("4: $boolNegat");               // bool negálása

  String vers = """
hattyúk a falvédőn,
priccsre csorog a giccs.
vadász elől félőn
szökell egy szarvas is.

zavar ez a látvány.
szemnek éppoly sértő,
mintha karmolsz táblán,
s nincs nálad fülvédő.
""";

  print("5:\n$vers");                   // eredeti vers
  print("6:\n${vers.toLowerCase()}");  // kisbetűs
  print("7:\n${vers.toUpperCase()}");  // nagybetűs
  print("8:\n${vers.trim()}");         // whitespace eltávolítása
  print("9:\n${vers.replaceAll(" ", "-")}"); // szóközök helyett kötőjel
  print("10:\n${vers.substring(4)}");  // a 4. karaktertől a végéig

  // Unicode kódok első három karakterre
  String FirstHalf = vers.runes.elementAt(0) as String;
  String SecondHalf = vers.runes.elementAt(1) as String;
  String ThirdHalf = vers.runes.elementAt(2) as String;
  String LeftBehind = vers.substring(3);
  print(FirstHalf + SecondHalf + ThirdHalf + LeftBehind);
}
