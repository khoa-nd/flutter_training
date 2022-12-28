class Solution {
  void reverseString(List<String> s) {
      int n = s.length;
      for(int i = 0; i < n ~/ 2; i++) {
          String temp = s[i];
          s[i] = s[n - 1 - i];
          s[n - 1 - i] = temp;
      }
  }
}