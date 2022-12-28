class Solution {
  String reverseWords(String s) {
      List<String> words = s.split(" ");
      for(int i = 0; i < words.length; i++) {
          words[i] = String.fromCharCodes(words[i].codeUnits.reversed);
      }
      return words.join(" ");
  }
}