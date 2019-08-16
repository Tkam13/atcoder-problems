#include <bits/stdc++.h>
using namespace std;

int main() {
  long n,a,b=0,ans=0;
  long d[210000];
  cin >> n;
  for(int i=0 ;i<n ;i++){
    cin >> a;
    d[i] = a-(i+1);
  }
  sort(d,d+n);
  b = n/2;
  for(int i=0 ;i<n ;i++){
    ans += abs(d[i] - d[b]);
  }

  cout << ans << endl;
}