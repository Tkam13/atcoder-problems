#include <bits/stdc++.h>
using namespace std;
string s;
long ans=0;

int dfs(long i,long j){
  if(i==s.size()-1){
    return j*10 + (long)(s[i]-'0');
  }else{
    cout << dfs(i+1,j*10+(long)(s[i]-'0')) << endl;
    cout << j*10 + (long)(s[i]-'0')+dfs(i+1,0) << endl;
  }
}

int main() {
  cin >> s;
  dfs(0,0);
  cout << ans << endl;
}