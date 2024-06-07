void rotate(List<int> nums, int k) {
  int n = nums.length;
  k = k % n;
  int p = 0;
  while (p <= k) {
    int last = nums[0];
    for (int i = 0; i < n - 1; i++) {
      nums[i] = nums[i + 1];
    }

    nums[n - 1] = last;
    p++;
  }
}

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5, 6, 7];
  int k = 3;

  rotate(nums, k);
  for (int i in nums) {
    print(i);
  }
}
