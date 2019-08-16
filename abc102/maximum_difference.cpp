#include <bits/stdc++.h>
using namespace std;

int main() {
  int n;
  int d[110];
  cin >> n;
  for(int i=0 ;i<n ;i++){
    cin >> d[i];
  }
  sort(d,d+n);
  cout << d[n-1] - d[0] << endl;
}