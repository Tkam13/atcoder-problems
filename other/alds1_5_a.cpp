#include <bits/stdc++.h>
using namespace std;

set<int> solve(vector<int> as) {
  int n = as.size();
  bool flag = false;
  set<int> s;
  for (int bits = 0; bits < 1 << n; bits++) {
    int sum = 0;
    for (int i = 0; i < n; i++) {
      if (bits & (1 << i)) {
        sum += as[i];
      }
    }
    s.insert(sum);
  }
  return s;
}

int main() {
  int n, m;
  cin >> n;
  vector<int> as(n);
  for (int i = 0; i < n; i++) {
    cin >> as[i];
  }
  cin >> m;
  vector<int> ms(m);
  for (int i = 0; i < m; i++) {
    cin >> ms[i];
  }
  set<int> s = solve(as);
  for (int i = 0; i < m; i++) {
    cout << (s.count(ms[i]) ? "yes" : "no") << endl;
  }
}
