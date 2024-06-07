int candy(List<int> ratings) {
  int n = ratings.length; // 
  int count = 0;

  List<int> memory = List.filled(n, 0);

  if (n == 1) {
    return 1;
  }

  for (int i = 0; i < n; i++) {
    memory[i] = 1;
  }

  for (int i = 0; i < n - 1; i++) {
    if (ratings[i + 1] > ratings[i]) {
      memory[i + 1] = memory[i] + 1;
    }
  }

  for (int i = n - 2; i >= 0; i--) {
    if (ratings[i] > ratings[i + 1] && memory[i] <= memory[i + 1]) {
      memory[i] = memory[i + 1] + 1;
    }
    count += memory[i];
  }
  count += memory[n - 1];
  return count;
}

void main(List<String> args) {
  List<int> ratings = [1, 0, 2];

  print(candy(ratings));
}
