#include <bits/stdc++.h>
using namespace std;
int n,r,a[100000];
int main() {
  cin >> n;
  for(int i=0 ;i<n ;i++){
    cin >> a[i];
  }
  sort(a,a+n);
  long double m = a[n-1];
  for(int x:a){
    if(abs(x-m/2) < abs(r-m/2)){
      r = x;
    }
  }
  cout << m/2 << " " << r << endl;
}