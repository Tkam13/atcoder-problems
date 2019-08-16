#include <bits/stdc++.h>
using namespace std;

int main() {
  string a,b;
  bool flag = false;
  cin >> a >> b;
  int c = stod(a + b);
  for(double i=1 ;i<1010 ;i++){
    if(c/i == i){
      flag = true;
    }
  }
  cout << (flag?"Yes":"No") << endl;
}