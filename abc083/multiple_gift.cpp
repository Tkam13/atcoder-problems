#include <bits/stdc++.h>
using namespace std;

int main() {
  long double x,y;
  cin >> x >> y;
  cout << floor(log(y/x)/log(2)+1) << endl;
}