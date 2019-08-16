#include <bits/stdc++.h>
using namespace std;

int main() {
  long double n,k,ans=0;
  cin >> n >> k;
  for(int i=1 ;i<=n ;i++){
    if(i<k){
      ans += pow(n,-1)*pow(0.5,ceil(log2(k/i)));
    }else{
      ans += pow(n,-1);
    }
  }
  cout << setprecision(20) << ans << endl;
}