import 'dart:io';

// 1. feladat
void createFile(String fileName) {
  final file = File(fileName);

  try {
    if (file.existsSync()) {
      print('$fileName már létezik.');
      return;
    }

    file.createSync();
    print('$fileName létrehozása sikeres volt.');
  } catch (e) {
    print('Hiba történt a fájl létrehozásakor ($fileName): $e');
  }
}

// 2. feladat
void deleteFile(String fileName) {
  final file = File(fileName);

  try {
    if (!file.existsSync()) {
      print('$fileName nem létezik, nincs mit törölni.');
      return;
    }

    file.deleteSync();
    print('$fileName törlése sikeres volt.');
  } catch (e) {
    print('A fájl törlése sikertelen ($fileName): $e');
  }
}

// 3. feladathoz is és 4. feladathoz is ezt használjuk
List<String> readFile(String fileName) {
  final file = File(fileName);

  try {
    if (!file.existsSync()) {
      print('$fileName nem létezik.');
      return [];
    }
    return file.readAsLinesSync();
  } catch (e) {
    print('Hiba történt a fájl olvasásakor ($fileName): $e');
    return [];
  }
}

// 3. feladat: nők előb, aztán férfiak 
void printContent(List<String> lines) {
  final women = <String>[];
  final men = <String>[];

  for (final line in lines) {
    final parts = line.split(',').map((p) => p.trim()).toList();
    if (parts.length < 3) continue;

    final gender = parts[2].toLowerCase(); 
    if (gender == 'female') {
      women.add(line);
    } else if (gender == 'male') {
      men.add(line);
    }
  }

  print('Nők:');
  for (final w in women) {
    print(w);
  }

  print('\nFérfiak:');
  for (final m in men) {
    print(m);
  }
}

// 4. feladat: szamok hozzáadása 
void addNumbers(String fileName, List<int> numbers) {
  final file = File(fileName);

  try {
    if (!file.existsSync()) {
      file.createSync();
    }

    String prefix = '';
    final len = file.lengthSync();
    if (len > 0) {
      final raf = file.openSync(mode: FileMode.read);
      raf.setPositionSync(len - 1);
      final lastByte = raf.readByteSync();
      raf.closeSync();

      if (lastByte != 10) { 
        prefix = '\n';
      }
    }

    final block = numbers.map((n) => n.toString()).join('\n');
    file.writeAsStringSync('$prefix$block\n', mode: FileMode.append);

    print('Számok hozzáadva a $fileName fájlhoz.');
  } catch (e) {
    print('Hiba történt a számok hozzáadásakor ($fileName): $e');
  }
}

// 4. feladat: beolvasott számok rendezése és kiírása
void printNumbers(List<String> content) {
  final nums = <int>[];

  for (final line in content) {
    final trimmed = line.trim();
    if (trimmed.isEmpty) continue;

    final parsed = int.tryParse(trimmed);
    if (parsed != null) nums.add(parsed);
  }

  nums.sort();

  for (final n in nums) {
    print(n);
  }
}

void main() {
  // 1. feladat
  createFile('cars.txt');
  createFile('players.txt');
  // 2. feladat
  deleteFile('players.txt');

  // 3. feladat
  final employeeLines = readFile('employees.txt');
  printContent(employeeLines);

  // 4. feladat
  const numbersFile = 'numbers.txt';
  final toAdd = [8, 0, 5, 1, 3, 2, 11, 19, 1];

  addNumbers(numbersFile, toAdd);

  final numberLines = readFile(numbersFile);
  printNumbers(numberLines);
}
