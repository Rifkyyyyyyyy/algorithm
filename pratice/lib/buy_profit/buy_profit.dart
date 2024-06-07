int _maxProfit(List<int> price) {
  int n = price.length;
  int buy = price.first;
  int max = 0;

  for (int i = 1; i < n; i++) {
    if (buy > price[i]) {
      print(price);
      print(price[i]);
      print(buy > price[i]);
      buy = price[i];
    } else if (price[i] - buy > max) {
      max = price[i] - buy;
    }
  }
  return max;
}

void main(List<String> args) {
  List<int> price = [7, 1, 5, 6, 4];
  int max = _maxProfit(price);
  print(max);
}
