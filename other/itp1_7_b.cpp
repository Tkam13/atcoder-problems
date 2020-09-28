#include <bits/stdc++.h>
using namespace std;

int n = -1, x = -1;

int solve() {
  int cnt = 0;
  for (int i = 1; i <= n; i++) {
    for (int j = i + 1; j <= n; j++) {
      for (int k = j + 1; k <= n; k++) {
        if (i != j && j != k && k != i && i + j + k == x) {
          cnt++;
        }
      }
    }
  }
  return cnt;
}

int main() {
  while (true) {
    cin >> n >> x;
    if (n == 0 && x == 0) break;
    cout << solve() << endl;
  }
}
