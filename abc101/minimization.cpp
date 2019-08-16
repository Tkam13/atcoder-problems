#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,k,cnt,sum=0;
  cin >> n >> k;
  int a[n];
  for(int i=0 ;i<n ;i++){
    cin >> a[i];
    if(a[i] == 1){
      cnt = i;
    }
  }
  for(int i=1 ;i<=n ;i++){
    if(n <= k + (k-1)*(i-1)){
      cout << i << endl;
      break;
    }
  }
}