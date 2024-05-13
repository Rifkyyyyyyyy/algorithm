// Anda memiliki sebuah list yang berisi angka-angka bulat positif.
// Bagaimana Anda dapat menggunakan metode List.filled untuk membuat list baru yang hanya berisi bilangan ganjil dari list asli?

// List<int> equal(List<int> numbers) {
//   int n = numbers.length;
//   List<int> result = List.filled(n, 0);

//   int index = 0;
//   for (int i = 0; i < n; i++) {
//     if (numbers[i] % 2 != 0) {
//       result[index] = numbers[i];
//       index++;
//     }
//   }
//   return result.sublist(0, index);
// }

// void main(List<String> args) {
//   List<int> bilangan = [10, 272, 222, 282, 11, 22 , 13];

//   var bilanganGanjil = equal(bilangan);
//   for (int a in bilanganGanjil) {
//     print('bilangan ganjil : $a');
//   }
// }

//

class Sample {
  final String name;
  final String lastName;

  @override
  String toString() => 'Hello my name is $name lastname is $lastName';

  Sample({required this.name, required this.lastName});
}

List<Sample> sample(Sample sample) =>
    List.filled(2, sample);

