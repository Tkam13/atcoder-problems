#include <bits/stdc++.h>
using namespace std;

int solve(int n, vector<int> xs, vector<int> ys, set<pair<int, int>> ps) {
  int ans = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      int dx = xs[j] - xs[i];
      int dy = ys[j] - ys[i];
      int s = dx * dx + dy * dy;
      pair<int, int> p1(xs[i] - dy, ys[i] + dx), p2(xs[j] - dy, ys[j] + dx);
      if (ps.count(p1) && ps.count(p2)) {
        ans = max(ans, s);
      }
    }
  }
  return ans;
}

int main() {
  int n;
  cin >> n;
  vector<int> xs(n), ys(n);
  set<pair<int, int>> ps;
  for (int i = 0; i < n; i++) {
    cin >> xs[i] >> ys[i];
    ps.emplace(xs[i], ys[i]);
  }
  cout << solve(n, xs, ys, ps) << endl;
}
