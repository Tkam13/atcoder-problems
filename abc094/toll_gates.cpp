#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,m,x,cnt_f=0,cnt_b=0;
  cin >> n >> m >> x;
  vector<int> as(n+1);
  for(int i=0 ;i<m ;i++){
    int a;
    cin >> a;
    as[a] = 1;
  }
  for(int i=x ;i<n ;i++){
    if(as[i]){
      cnt_f++;
    }
  }
  for(int i=x;i>0;i--){
    if(as[i]){
      cnt_b++;
    }
  }
  cout << min(cnt_f,cnt_b) << endl;
}