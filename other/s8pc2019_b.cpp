#include <bits/stdc++.h>
using namespace std;

long long solve(int n, vector<long> as, vector<long> bs) {
  long long ans = 0;
  long double a_m, b_m;
  sort(as.begin(), as.end());
  sort(bs.begin(), bs.end());
  if (n % 2 == 0) {
    a_m = (as[n / 2] + as[n / 2 - 1]) / 2;
    b_m = (bs[n / 2] + bs[n / 2 - 1]) / 2;
  } else {
    a_m = as[n / 2];
    b_m = bs[n / 2];
  }
  for (int i = 0; i < n; i++) {
    ans += abs(as[i] - a_m) + abs(as[i] - bs[i]) + abs(bs[i] - b_m);
  }
  return ans;
}

int main() {
  int n;
  cin >> n;
  vector<long> as(n), bs(n);
  for (int i = 0; i < n; i++) {
    cin >> as[i] >> bs[i];
  }
  cout << solve(n, as, bs) << endl;
}
