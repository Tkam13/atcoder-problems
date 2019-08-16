#include <bits/stdc++.h>
using namespace std;

int main() {
  int a,b,sum=0;
  cin >> a >> b;
  int n = b - a - 1;
  for(int i=1 ;i<=n ;i++){
    sum += i;
  }
  cout << sum - a << endl;
}