#include <bits/stdc++.h>
using namespace std;

int main() {
  int a,b;
  cin >> a  >> b;
  cout << max({a*2-1,b*2-1,a+b}) << endl;
}