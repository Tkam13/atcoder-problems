#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,c,d,ans=0;
  cin >> n;
  for(int i=1 ;i<=n ;i++){
    c = 0;
    d = i;
    while(d){
      d /= 10;
      c++;
    }
    if(c%2 == 1){
      ans++;
    }
  }
  cout << ans << endl;
}