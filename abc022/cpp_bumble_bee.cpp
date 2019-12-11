#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,t,ans = 0;
  cin >> n;
  vector<int> a(100010);
  for(int i=0 ;i<n ;i++){
    cin >> t;
    if(a[t] == 1){
      ans++;
    }else{
      a[t] = 1;
    }
  }

  cout << ans << endl;
}