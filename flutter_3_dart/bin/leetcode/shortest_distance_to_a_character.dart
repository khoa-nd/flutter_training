import 'dart:math';

void main(List<String> arguments) {
  print(shortestToChar('loveleetcode', 'e'));
}

List<int> shortestToChar(String s, String c) {
  // copy this maxInt minInt from this link https://github.com/dart-lang/sdk/issues/41717
  final int minInt = (double.infinity is int) ? -double.infinity as int : (-1 << 63);
  final int maxInt = (double.infinity is int) ? double.infinity as int : ~minInt;

  int n = s.length;
  // fill dist array with 0 (zero) position equals to e,
  // and fill max at other positions
  // we will get [max, max, max, 0, max, 0, 0, max, max, max, max, 0]
  List<int> dist = List.filled(n, 0);
  var sList = s.runes.toList();
  for (int i = 0; i < n; i++) {
    if (String.fromCharCode(sList[i]) == c) {
      continue;
    }
    dist[i] = maxInt;
  }

  // going from left to right, if item=max, skip, else dist[i+1] = Math.min(dp[i] + 1, dp[i+1]), 
  // we can get [max, max, max, 0, 1, 0, 0, 1, 2, 3, 4, 0]
  for (int i = 0; i < n - 1; i++) {
    if (dist[i] == maxInt) {
      continue;
    } else {
      // count distance from character c to next item in the string + 1
      // compare with its current distance, get min of two distances
      dist[i + 1] = min(dist[i+1], dist[i] + 1);
    }
  }

  // going from right to left, use dp[i-1] = Math.min(dp[i] + 1, dp[i-1])
  // we will get[3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0] 
  for (int i = n - 1; i > 0; i--) {
    dist[i-1] = min(dist[i-1], dist[i] + 1);
  }

  return dist;
}
