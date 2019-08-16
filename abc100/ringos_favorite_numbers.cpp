#include <bits/stdc++.h>
using namespace std;

int main() {
  int d,n;
  cin >> d >> n;
  int k = pow(100,d);
  if(n == 100){
    cout << 101*k << endl;
  }else{
    cout << n*k << endl;
  }
}