int remove(List<int> nums, int val) {
  int index = 0;
  for (int i = 0; i < nums.length; i++) {
    if (nums[i] != val) {
      nums[index] = nums[i];
      index++;
    }
  }
  return index;
}

// int duplicate(
//   List<int> arr,
// ) {
//   int n = arr.length;
//   if (n == 0 || n == 1) return n;

//   List<int> temp = List.filled(n, 0);
//   int j = 0;

//   for (int i = 0; i < n - 1; i++) {
//     if (arr[i] != arr[i + 1]) {
//       temp[j++] = arr[i];
//     }
//   }

//   temp[j++] = arr[n - 1];

//   for (int i = 0; i < j; i++) {
//     arr[i] = temp[i];
//   }

//   return j;
// }

// void main(List<String> args) {
//   List<int> arr = [1, 2, 2, 3, 4, 4, 4, 5, 5];
//   int n = arr.length;

//   n = duplicate(arr);

//   for (int i = 0; i < n; i++) {
//     print(arr[i]);
//   }
// }

int? major(List<int> nums) {
  int ? candidate;
  int count = 0;

  for (int n in nums) {
    if (count == 0) {
      candidate = n;
    }
    count += (n == candidate) ? 1 : -1;
  }


  count = 0;
  for (int num in nums) {
    if (num == candidate) {
      count++;
    }
  }

  return (count > nums.length ~/ 2) ? candidate : -1;
}



void main(List<String> args) {
  List<int> nums = [1, 1, 2, 1, 3, 5, 1];

  print(major(nums));
}
