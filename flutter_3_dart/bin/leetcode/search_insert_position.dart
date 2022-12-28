void main(List<String> arguments) {
  // List<int> nums = [1,3,5,6];
  // int index = searchInsert(nums, 0);
  // print(index);
  List<int> nums1 = [0];
  List<int> nums2 = [1];
  int m = 0;
  int n = 1;
  merge(nums1, m, nums2, n);
  print(nums1);
}

int searchInsert(List<int> nums, int target) {
  int left = 0;
  int right = nums.length - 1;
  int mid = 0;
  while (left < right) {
    mid = (left + right) ~/ 2 + 1;
    if (target == nums[mid]) {
      return mid;
    } else if (target < nums[mid]) {
      right = mid - 1;
    } else {
      left = mid + 1;
    }
  }
  return mid;
}

void merge(List<int> nums1, int m, List<int> nums2, int n) {
      List<int> result = List.empty(growable: true);
      int current1 = 0;
      int current2 = 0;
      while (current1 < m && current2 < n) {
          if (nums1[current1] <= nums2[current2]) {
              result.add(nums1[current1]);
              current1++;
          } else if (nums2[current2] < nums1[current1]) {
              result.add(nums2[current2]);
              current2++;
          }
      }

      if (current1 < m) {
          result.addAll(nums1.sublist(current1, m));
      }

      if (current2 < n) {
          result.addAll(nums2.sublist(current2, m));
      }
      
      for(int i = 0; i < m + n; i++) {  
        nums1[i] = result[i];
      }
  }