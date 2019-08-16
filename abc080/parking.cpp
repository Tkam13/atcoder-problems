#include <bits/stdc++.h>
using namespace std;

int main() {
 int n,a,b,ans;
 cin >> n >> a >> b;
 if(a*n > b){
   ans = b;
 }else{
   ans = a*n;
 }
 cout << ans << endl;
}