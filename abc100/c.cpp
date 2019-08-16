#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,a,cnt=0;
  cin >> n;
  for(int i=0 ;i<n ;i++){
    cin >> a;
    while(a%2==0){
      a /= 2;
      cnt++;
    }
  }
  cout << cnt << endl;
}