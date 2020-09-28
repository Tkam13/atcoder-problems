#include <bits/stdc++.h>
using namespace std;

int solve(string s) {
  int ans = 0, cnt = 0;
  for (int i = 0; i < s.size(); i++) {
    if (s[i] == 'A' || s[i] == 'C' || s[i] == 'G' || s[i] == 'T') {
      cnt++;
    } else {
      cnt = 0;
    }
    ans = max(ans, cnt);
  }
  return ans;
}
int main() {
  string s;
  cin >> s;
  cout << solve(s) << endl;
}
