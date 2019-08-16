#include <bits/stdc++.h>
using namespace std;

int main() {
  int a,b;
  string s;
  bool flag = true;
  cin >> a >> b >> s; 
  for(int i=0 ;i<s.size() ;i++){
    if(i != a && s[i] == '-'){
      flag = false;
    }else if(i == a && s[i] != '-'){
      flag = false;
    }
  }
  cout << (flag?"Yes":"No") << endl;
}