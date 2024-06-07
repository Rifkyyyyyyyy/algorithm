bool canJump(List<int> nums) {
  int goal = nums.length - 1;
  print(goal);
  for (int i = nums.length - 1; i >= 0; i--) {
    int distance = i + nums[i];

    if (distance >= goal) {
      goal = i;
      
    }
  }
  return (goal == 0) ? true : false;
}

void main(List<String> args) {
  List<int> nums = [1, 2, 3, 4, 5];

  print(canJump(nums));
}

// void main(List<String> args) {
//   List<int> nums = [1, 2, 3, 4, 5];

//   for (int i = 0; i < nums.length * (2 + 1); i++) {
//     String a = '';
//     for (int j = 0; j < nums.length; j++) {
//       if (j < i && nums[i % nums.length] % 5 == 0) {
//         a += i.toString();
//       } else {
//         a += '+';
//       }
//     }

//     for (int s = 0; s < a.length; s++) {
//       for (int j = 0; j < s; j++) {
//         a = a[s] + a[j];
//       }
//     }
//     print(a.split(''));
//   }
// }
