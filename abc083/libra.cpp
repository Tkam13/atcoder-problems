#include <bits/stdc++.h>
using namespace std;

int main() {
  int a,b,c,d;
  string ans;
  cin >> a >> b >> c >> d;
  if(a+b == c+d){
    ans = "Balanced";
  }
  else if(a+b > c+d){
    ans = "Left";
  }else{
    ans = "Right";
  }
  cout << ans << endl;
}