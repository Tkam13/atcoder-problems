#include <bits/stdc++.h>
using namespace std;

int main() {
 int n,k,x;
 int a = 0;
 cin >> n >> k;
 for(int i = 0;i < n;i++){
   cin >> x;
   a += (x < k -x ? x*2:(k-x)*2);
 }
 cout << a << endl;
}