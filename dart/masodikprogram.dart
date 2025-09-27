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
  // Az 5. karakteről a végéig, melynek az elején ... (három pont és szóköz) van
  print("11:\n... ${vers.substring(5)}");
  // Unicode kódok első három karakterre
  String FirstHalf = vers.runes.elementAt(0).toRadixString(16);   // Első karakter Unicode kódja
  String SecondHalf = vers.runes.elementAt(1).toRadixString(16);  // Második karakter Unicode kódja
  String ThirdHalf = vers.runes.elementAt(2).toRadixString(16);   // Harmadik karakter Unicode kódja
  String LeftBehind = vers.substring(3); // A 3. karaktertől a végéig
  print(FirstHalf + ", " + SecondHalf + ", " + ThirdHalf + ", " + LeftBehind); // Összeillesztve
  print("12:\n${vers.substring(10)} ..."); // A 10. karaktertől a végéig, melynek a végén ... (szóköz és három pont) van
}
