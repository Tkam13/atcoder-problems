#include <bits/stdc++.h>
using namespace std;

int main() {
  string s;
  cin >> s;
  bool flag1 = false,flag2 = false,flag3 = true;
  if(s[0] == 'A'){
    flag1 = true;
    s[0] = 'a';
  }
  for(int i=2 ;i<s.size()-1 ;i++){
    if(s[i] == 'C'){
      flag2 = true;
      s[i] = 'c';
      break;
    }
  }
  for(int i=0 ;i<s.size() ;i++){
    if(isupper(s[i])){
      flag3 = false;
    }
  }
  cout << (flag1&&flag2&&flag3?"AC":"WA") << endl;
}