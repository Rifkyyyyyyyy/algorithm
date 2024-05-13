// void main(List<String> args) {
//   for (int a = 2; a > 0; a--) {
//     for (int i = 0; i < 10; i++) {
//       String b = '';
//       for (var j = 0; j < i + 1; j++) {
//         if (j > 0 && b[j - 1] == '*') {
//           b += '-';
//         } else {
//           b += "*";
//         }
//       }
//       print(b);
//     }
//   }
// }

// void main(List<String> args) {
//   String b = '';
//   for (int i = 10; i > 0; i--) {
//     b = '';
//     for (int j = 5; j < i; j++) {
//       if (j < i) {
//         b += '^';
//       }
//     }
//     for (int a = 6; a > i; a--) {
//       b += '^';
//     }
//     print(b);
//   }
// }

void main(List<String> args) {
  List<String> sample = ['rifky', 'samsul', 'ucup', 'udin'];
  List<String> contains = ['s', 'w', 'k', 'u', 'p'];

  for (int i = 0; i < sample.length; i++) {
    for (int j = 0; j < contains.length; j++) {
      if (sample[i].contains(contains[j])) {
        print('${sample[i]} contains ${contains[j]}');
      }
    }
  }
}


