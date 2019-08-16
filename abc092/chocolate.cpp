#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,d,x,a,cnt=0;
  cin >> n >> d >> x;
  for(int i=0 ;i<n ;i++){
    cin >> a;
    cnt += (d-1)/a+1;
  }
  cout << cnt + x << endl;
}