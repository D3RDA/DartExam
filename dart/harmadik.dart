// 1. Írad ki az iskola nevét!
// 2. Hozd létre változókat az irányítószámnak, utcának, településnek, házszámnak!
// Majd ezek felhasználásával írask ki az iskola nevét és címét!
// 3. Számold ki és írasd ki az évfolyamok létszámát!
// 9. évfolyamon 4 osztály van, a többi évfolyamon 3. Az osztályok átlagos létszáma 28 fő.
void main(){
  String iskolaNev = "Szegedi SZC Vasvári Pál Gazdasági és Informatikai Technikum";
  String iranyitoszam = "6722";
  String utca = "Gutenberg";
  String telepules = "Szeged";
  String hazszam = "11";
  print("Iskola neve: $iskolaNev");
  print("Címe: $iranyitoszam, $telepules, $utca $hazszam");

  int osztaly_9 = 4;
  int osztalyTobbi = 3;
  int atlagLetszam = 28;
  int evfolyamok = 4; //9,10,11,12 évfolyam
  int letszam9 = osztaly_9 * atlagLetszam;
  int letszamTobbi = osztalyTobbi * atlagLetszam;
  int osszesLetszam = letszam9 + letszamTobbi;
  print("Az évfolyamok létszáma: $osszesLetszam fő");

}