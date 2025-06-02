bool isPrime(int num) {
  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}

int modInverse(int e, int m) {
  for (int d = 1; d < m; d++) {
    if ((d * e) % m == 1) {
      return d;
    }
  }
  throw Exception("No modular inverse found!");
}

int compute(int message, int ed, int n) {
  return message.modPow(ed, n);
}
