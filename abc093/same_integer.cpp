#include <bits/stdc++.h>
using namespace std;

int a,b,c,cnt,m;
int main() {
  cin >> a >> b >> c;
  if(a%2==b%2 && b%2==c%2 && c%2==a%2){
    cnt = 0;
  }else if(a%2==b%2){
    a++;b++;
    cnt = 1;
  }else if(b%2==c%2){
    b++;c++;
    cnt = 1;
  }else{
    c++;a++;
    cnt = 1;
  }
  m = max({a,b,c});
  for(int x:{a,b,c}){
    cnt += (m-x)/2;
  }
  cout << cnt << endl;
}