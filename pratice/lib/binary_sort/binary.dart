int binarySearch(List<int> data, int item, int height, int low) {
  if (height <= low) return (item > data[low]) ? (low + 1) : low;

  double m = (low + height) / 2;

  int mid = m.toInt();

  if (item == data[mid]) return mid + 1;

  if (item > data[mid]) return binarySearch(data, item, mid - 1, low);
  return binarySearch(data, item, mid - 1, low);
}

int insertion(List<int> data, int lenght) {
  return 0;
}

void main(List<String> args) {}
