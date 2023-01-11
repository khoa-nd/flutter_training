void main(List<String> arguments) {
  print('Test case 1: ${repeatedNTimes([1,2,3,3]) == 3 ? 'passed' : 'failed'}');
  print('Test case 2: ${repeatedNTimes([2,1,2,5,3,2]) == 2 ? 'passed' : 'failed'}');
  print('Test case 3: ${repeatedNTimes([5,1,5,2,5,3,5,4]) == 5 ? 'passed' : 'failed'}');
}

int repeatedNTimes(List<int> nums) {
  // count occurences of each item in the list
  var map = Map();
  nums.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });

  // As nums contains n + 1 unique elements. one element of nums is repeated n times.
  // So there are N - 1 elements occurs once, 1 element occurs greater than once.
  for (var k in map.keys) {
    if (map[k] > 1) {
      return k;
    }
  }
  return 0;
}
