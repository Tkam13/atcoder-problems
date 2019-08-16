#include <bits/stdc++.h>
using namespace std;

int main() {
  int n;
  string ans = "";
  cin >> n;
  while(n != 0){
    if(n%2 != 0){
      ans = "1" + ans;
      n -= 1;
    }else{
      ans = "0" + ans;
    }
    n /= -2;
  }
  if(ans == "") ans ="0";
  cout << ans << endl;

}