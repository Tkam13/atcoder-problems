#include <bits/stdc++.h>
using namespace std;

int a,b,k;
int main() {
  cin >> a >> b >> k;
  for(int i=a ;i<=b ;i++){
    if(i<a+k ||i>b-k){
      cout << i << endl;
    }
  }
}