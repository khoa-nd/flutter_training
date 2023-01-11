void main(List<String> arguments) {
  print('Test case N=1: ${fibo(2)==1 ? 'passed' : 'failed'}');
  print('Test case N=3: ${fibo(3)==2 ? 'passed' : 'failed'}');
  print('Test case N=4: ${fibo(4)==3 ? 'passed' : 'failed'}');
  print('Test case N=30: ${fibo(30)==832040 ? 'passed' : 'failed'}');
}

int fibo(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;

  var f = List.filled(n + 1, 0);
  f[0] = 0;
  f[1] = 1;
  for (int i = 2; i < n + 1; i++) {
    f[i] = f[i - 2] + f[i - 1];
  }
  return f[n];
}
