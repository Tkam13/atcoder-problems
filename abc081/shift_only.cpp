#include <bits/stdc++.h>
using namespace std;

int main() {
 int n,a,cnt,ans = 1e9;
 cin >> n;
 for(int i=0;i<n;i++){
   cin >> a;
   cnt = 0;
   while(a%2 == 0){
     cnt++;
     a /= 2;
   }
   if(ans > cnt){
     ans = cnt;
   }
 }
 cout << ans << endl;
}