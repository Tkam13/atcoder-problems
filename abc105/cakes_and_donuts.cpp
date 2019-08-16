#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,s;
  cin >> n;
  for(int i=0 ;i<n ;i++){
    for(int j=0 ;j<n ;j++){
      s = 4*i + 7*j;
      if(s == n){
        cout << "Yes" << endl;
        return 0;
      }
    }
  }
  cout << "No" << endl;
}