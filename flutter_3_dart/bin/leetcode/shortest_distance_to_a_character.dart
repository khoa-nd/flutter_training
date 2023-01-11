import 'dart:math';

void main(List<String> arguments) {
  print(shortestToChar('loveleetcode', 'e'));
}

List<int> shortestToChar(String s, String c) {
  // copy this maxInt minInt from this link https://github.com/dart-lang/sdk/issues/41717
  final int minInt = (double.infinity is int) ? -double.infinity as int : (-1 << 63);
  final int maxInt = (double.infinity is int) ? double.infinity as int : ~minInt;

  int n = s.length;
  List<int> dist = List.filled(n, 0);
  var sList = s.runes.toList();
  for (int i = 0; i < n; i++) {
    if (String.fromCharCode(sList[i]) == c) {
      continue;
    }
    dist[i] = maxInt;
  }

  for (int i = 0; i < n - 1; i++) {
    if (dist[i] == maxInt) {
      continue;
    } else {
      dist[i + 1] = min(dist[i+1], dist[i] + 1);
    }
  }

  for (int i = n - 1; i > 0; i--) {
    dist[i-1] = min(dist[i-1], dist[i] + 1);
  }

  return dist;
}
