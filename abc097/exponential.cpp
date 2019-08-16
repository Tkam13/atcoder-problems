#include <bits/stdc++.h>
using namespace std;

int main() {
  int x;
  cin >> x;
  int i = 0;
  while(x>=i*i){
    i++;
  }
  cout << pow(i-1,2) << endl;
}