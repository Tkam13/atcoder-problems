#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,a,b,s,ans=0;
  cin >> n >> a >> b;
  for(int i=1 ;i<=n ;i++){
    s = 0;
    int _i = i;
    while(_i){
      s += _i%10;
      _i /= 10;
    }
    if(s>=a && s<=b){
      ans += i;
    }
  }
  cout << ans << endl;
}