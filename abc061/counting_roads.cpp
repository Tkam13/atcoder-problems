#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,m,r;
  cin >> n >> m;
  vector<int> vec(n);
  for(int i = 0;i<2*m;i++){
    cin >> r;
    vec[r-1] += 1;
  }
  for(int i :vec){
    cout << i << endl;
  }
}