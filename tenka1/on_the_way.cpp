#include <bits/stdc++.h>
using namespace std;

int a,b,c;
int main() {
  cin >> a >> b >> c;
  if(min(a,b)<= c && max(a,b)>=c){
    cout << "Yes" << endl;
  }else{
    cout << "No" << endl;
  }
}