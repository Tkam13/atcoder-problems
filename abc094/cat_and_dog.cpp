#include <bits/stdc++.h>
using namespace std;

int main() {
  int a,b,x;
  string ans;
  cin >> a >> b >> x;
  if(x>=a && a+b>=x){
    ans = "YES";
  }else{
    ans = "NO";
  }
  cout << ans << endl;
}