#include <bits/stdc++.h>
using namespace std;

int main() {
  int n = 0;
  string s;
  cin >> s;
  for(int i=0 ;i<s.size() ;i++){
    if(s[i] == '+'){
      n++;
    }else{
      n--;
    }
  }
  cout << n << endl;
}