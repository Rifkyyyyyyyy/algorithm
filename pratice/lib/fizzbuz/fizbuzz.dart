List<String> fizzBuzz(int n) {
  List<String> data = [];
  for (int i = 1; i <= n; i++) {
    if (i % 5 == 0 && i % 3 == 0) {
      data.add('FizzBuzz');
    } else if (i % 3 == 0) {
      data.add('Fizz');
    } else if (i % 5 == 0) {
      data.add('Buzz');
    } else {
      data.add(i.toString());
    }
  }
  return data;
}

void main(List<String> args) {
  var a = fizzBuzz(15);

  for (String data in a) {
    print(data);
  }
}
