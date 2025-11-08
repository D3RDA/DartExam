import 'dart:math';
import 'dart:io';
// 1. faktorial(integer)
// A megadott integer számig adja vissza a szám fakrotiálisát

// 2. isDivisible(integer1, integer2)
// A visszatérési érték true, ha az integer1-nek az integer2 osztója.
// Ellenkező esetben false.

// 3. percent(total, score)
// Add vissza, hogy hány százaléka a totalnak a score.
// A visszaadott érték két tizedes jegyű legyen.

// 4. grade(total, points)
// Add vissza, hogy milyen értékelést ért el a tanuló a teszten, ha a total az össz pontszám. Az elért pontszám a points.
// Az értékelés alapja:
// A : 90 %-tól
// B: 75 %-tól, 90 %-ig (90 nincs benne)
// C: 60 %-tól 75 %.ig (75 nincs benne)
// D: 45 %-tól 60 %-ig (60 nincs benne)
// E: 0 %-tól 45 %-ig (45 nincs benne)

// 5. vowelUpper(text)
// Vissza a text Stringet, melyben a magánhangzók nagybetűdek, a mássalhangzók kisbetűsek.

// 6. gausSum(integer)
// Add össze a számokat a megadott számig és add vissza az összeget.

// 7. gausList(integer)
// Egy listába gyűjts össze az adott integer számig a Gaus összegeket.
// 0 esetén egy üres tömb a válasz, egyéb esetben a Gaus összegek vannak a tömbben, ahol a tömb hossza a megadott integer.

// Például:
// gausList(4) -> [1, 3, 6, 10]

// 1 -> 1
// 2 -> 1 + 2 = 3
// 3 -> 1 + 2 + 3 = 6
// 4 -> 1 + 2 + 3 + 4 = 10
