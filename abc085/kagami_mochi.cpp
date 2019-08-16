#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,d;
  cin >> n;
  set<int> ds;
  for(int i=0 ;i<n ;i++){
    cin >> d;
    ds.insert(d);
  }
  cout << ds.size() << endl;
}