#include <bits/stdc++.h>
using namespace std;

int main() {
  int a,b;
  string ans;
  cin >> a >> b;
  if(a*b%2 == 0){
    ans = "Even";
  }else{
    ans = "Odd";
  }
  cout << ans << endl;
}