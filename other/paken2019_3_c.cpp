#include <bits/stdc++.h>
using namespace std;

long solve(int n, int m, vector<vector<long>> as) {
  long ans = 0;
  for (int j = 0; j < m; j++) {
    for (int k = j + 1; k < m; k++) {
      long point = 0;
      for (int i = 0; i < n; i++) {
        point += max(as[i][j], as[i][k]);
      }
      ans = max(ans, point);
    }
  }
  return ans;
}

int main() {
  long n, m;
  vector<vector<long>> as;
  cin >> n >> m;
  as.resize(n, vector<long>(m));
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < m; j++) {
      cin >> as[i][j];
    }
  }
  cout << solve(n, m, as) << endl;
}
