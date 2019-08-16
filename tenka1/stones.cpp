#include <bits/stdc++.h>
using namespace std;

int n,ans=1e6,cnt=0,b[200001];
string s;
int main() {
  cin >> n >> s;
  for(int i=0 ;i<n ;i++){
    if(s[i] == '#' ){
      cnt++;
    }
    b[i+1] = cnt;
  }
  for(int i=0 ;i<=n ;i++){
    ans = min(ans,n-i-b[n]+2*b[i]);
  }
  cout << ans << endl;
}