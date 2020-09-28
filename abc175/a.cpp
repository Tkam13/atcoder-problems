#include <bits/stdc++.h>
using namespace std;

int main() {
  string s;
  int cnt = 0, ans = 0;
  cin >> s;
  for (int i = 0; i < s.size(); i++) {
    if (s[i] == 'R') {
      cnt++;
    } else {
      cnt = 0;
    }
    ans = max(ans, cnt);
  }
  cout << ans << endl;
}
