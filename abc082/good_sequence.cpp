#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,cnt=0,ans=0,current=0;
  cin >> n;
  vector<long> a(n);
  for(int i=0 ;i<n ;i++){
    cin >> a[i];
  }
  sort(a.begin(),a.end());
  for(int i=0 ;i<n ;i++){
    if(a[i] != current){
      if(cnt < current){
        ans += cnt;
      }else{
        ans += cnt - current;
      }
      cnt = 1;
      current = a[i];
    }else{
      cnt++;
    }
  }
  if(cnt < current){
    ans += cnt;
  }else{
    ans += cnt - current;
  }
  cout << ans << endl;
}