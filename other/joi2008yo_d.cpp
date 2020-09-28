#include <bits/stdc++.h>
using namespace std;

pair<int, int> solve(vector<pair<int, int>> signs, set<pair<int, int>> stars) {
  pair<int, int> ans;
  int n = signs.size();
  for (auto &&p : stars) {
    bool flag = true;
    int dx, dy;
    for (int i = 0; i < n; i++) {
      if (i == 0) {
        dx = p.first - signs[i].first;
        dy = p.second - signs[i].second;
      } else {
        if (!stars.count({signs[i].first + dx, signs[i].second + dy})) {
          flag = false;
          break;
        }
      }
    }
    if (flag) {
      ans = make_pair(dx, dy);
    }
  }
  return ans;
}

int main() {
  int n, m;
  cin >> m;
  vector<pair<int, int>> signs(m);
  for (int i = 0; i < m; i++) {
    pair<int, int> p;
    cin >> p.first >> p.second;
    signs[i] = p;
  }
  cin >> n;
  set<pair<int, int>> stars;
  for (int i = 0; i < n; i++) {
    pair<int, int> p;
    cin >> p.first >> p.second;
    stars.emplace(p);
  }
  pair<int, int> ans = solve(signs, stars);
  cout << ans.first << " " << ans.second << endl;
}
