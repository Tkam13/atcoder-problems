#include <bits/stdc++.h>
using namespace std;

int main() {
  int n;
  cin >> n;
  vector<int> a(n+2,0),b(n+2,0),c(n+2,0);
  for(int i=1 ;i<=n ;i++){
    cin >> a[i];
  }
  for(int i=0 ;i<=n ;i++){
    b[i+1] = abs(a[i+1] - a[i]) + b[i];
    c[i+1] = abs(a[n+1-i] - a[n-i]) + c[i];
  }
  for(int i=1 ;i<=n ;i++){
    cout << b[i-1] + abs(a[i+1]-a[i-1]) + c[n-i] << endl;
  }
  
}