// Integer to Roman

// Deskripsi: Diberikan sebuah angka integer, tugasnya
// adalah mengonversinya menjadi string yang mewakili angka Romawi. Sebagai contoh,
// jika angka input adalah 1994, output yang diharapkan adalah "MCMXCIV".

// syarat

// Variabel Input:

// num: Sebuah bilangan bulat yang akan dikonversi menjadi angka Romawi. Angka input ini berada dalam rentang 1 hingga 3999.
// Variabel Output:

// result: String yang mewakili angka Romawi dari bilangan bulat input num.

String intToRoman(int number) {
  if (number < 1 || number > 3999) {
    return "Angka harus berada dalam rentang 1 hingga 3999.";
  }

  List<String> romanSymbols = [
    "M",
    "CM",
    "D",
    "CD",
    "C",
    "XC",
    "L",
    "XL",
    "X",
    "IX",
    "V",
    "IV",
    "I"
  ];
  List<int> romanValues = [
    1000,
    900,
    500,
    400,
    100,
    90,
    50,
    40,
    10,
    9,
    5,
    4,
    1
  ];

  String result = '';
  int i = 0;
  while (number > 0) {
    print('number : $i');
    while (number >= romanValues[i]) {
      // print('index : ${romanValues[i]}');
      result += romanSymbols[i];
      print('ditambah : ${result += romanSymbols[i]}');
      number -= romanValues[i];
      print('dikurang : ${number -= romanValues[i]}');
    }

    i++;
  }

  return result;
}

void main() {
  print(intToRoman(1));
}
