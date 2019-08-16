#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,ans=1;
  string s;
  vector<int> c(5,0);
  bool flag = false;
  cin >> n;
  for(int i=0 ;i<n ;i++){
    cin >> s;
    if(s[0] == 'M'){
      c[0]++;
    }else if(s[0] == 'A'){
      c[1]++;
    }else if(s[0] == 'R'){
      c[2]++;
    }else if(s[0] == 'C'){
      c[3]++;
    }else if(s[0] == 'H'){
      c[4]++;
    }
  }
  for(int i=0 ;i<5 ;i++){
    if(c[i] != 0){
      ans *= c[i];
      flag = true;
    }
  }
  cout << (flag?ans:0) << endl;
}