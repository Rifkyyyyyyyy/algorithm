bool valid(String input) {
  List<String> data = [];

  for (int i = 0; i < input.length; i++) {
    if (input[i] == '(' || input[i] == '{' || input[i] == '[') {
      data.add(input[i]);
    } else {
      if (data.isEmpty) {
        return false; 
      }
      String last = data.removeLast();
      if ((last == '(' && input[i] != ')') ||
          (last == '{' && input[i] != '}') ||
          (last == '[' && input[i] != ']')) {
        return false; 
      }
    }
  }

  return data.isEmpty; 
}

void main(List<String> args) {
  String input = '{()}[]';

  if (valid(input)) {
    print('yes');
  } else {
    print('no');
  }
}
