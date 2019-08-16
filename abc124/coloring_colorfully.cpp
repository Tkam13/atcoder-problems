#include <bits/stdc++.h>
using namespace std;

int main() {
  string s;
  cin >> s;
  int i = 0,cnt_e = 0 ,cnt_o = 0;
  for(char c : s){
    if(i%2 == 0){
      if(c == '0'){
        cnt_o++;
      }else{
        cnt_e++;
      }
    }else{
      if(c == '0'){
        cnt_e++;
      }else{
        cnt_o++;
      }
    }
    i++;
  }
  cout << min(cnt_o,cnt_e) << endl;
}