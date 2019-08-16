#include <bits/stdc++.h>
using namespace std;

int main() {
  int r,g,b,n,cnt = 0;
  cin >> r >> g >> b >> n;
  for(int i=0 ;i<=n ;i++){
    for(int j=0 ;i<=n ;j++){
      for(int k=0 ;i<=n;k++){
        if(n == r*i + g*j + b*k){
          cnt++;
        }
      }
    }
  }
  cout << cnt << endl;
}