int hIndx(List<int> citations) {
  int n = citations.length;
  List<int> bucket = List.generate(n + 1, (index) => 0);
  for (int i = 0; i < n; i++) {
    int a = citations[i];
    if (a >= n) {
      bucket[n]++;
    } else {
      bucket[a]++;
    }
  }
  int cx = 0;
  for (int i = n; i >= 0; i--) {
    cx += bucket[i];
    if (cx >= i) return i;
  }
  return -1;
}

void main(List<String> args) {
  List<int> citations = [3, 0, 6, 1, 7];
  print(hIndx(citations));
}
