#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,x,y,ans = 0;
  cin >> n;
  vector<int> xs(n);
  vector<int> ys(n);
  set<pair<int,int>> ps;
  for(int i = 0; i < n; i++){
    cin >> x >> y;
    xs[i] = x;
    ys[i] = y;
    ps.emplace(x,y);
  }

  for(int i = 0; i < n; i++){
    for(int j = 0; j < n; j++){
      int dx = xs[i] - xs[j];
      int dy = ys[i] - ys[j];
      int s = dx * dx + dy * dy;
      if(ps.count({xs[i] - dy,ys[i] + dx}) && ps.count({xs[j] - dy, ys[j] + dx})){
        ans = max(ans,s);
      }
    }
  }

  cout << ans << endl;
}