void main(List<String> arguments) {
  // List<int> nums = [1,3,5,6];
  // int index = searchInsert(nums, 0);
  // print(index);
  String s= "a";
  print(lengthOfLastWord(s));
}

int lengthOfLastWord(String s) {
      int length = s.length;
      int startIndex = -1;
      int endIndex = -1;
      for(int i = length - 1; i > 0; i--) {
          if (endIndex == -1) {
              if (_hasNotEndingWhitespace(s)) {
                  endIndex = i;
              } else if (_hasWhitespace(s, i)) {
                  endIndex = i - 1;
              }
          }
          if (endIndex > 0 && s[i] != " " && s[i - 1] == " ") {
              startIndex = i;
              break;
          } else if (endIndex == 0) {
              startIndex = 0;
              break;
          }
      }
      print(s[startIndex]);
      print(s[endIndex]);
      return endIndex - startIndex + 1;
  }

  bool _hasWhitespace(String s, int atIndex) {
      return s[atIndex] == " " && s[atIndex - 1] != " ";
  }

  bool _hasNotEndingWhitespace(String s) {
      return s[s.length - 1] != " ";
  }