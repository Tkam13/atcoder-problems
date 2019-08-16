#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,cur=1,cnt=0,pre;
  cin >> n;
  vector<int> vec(n+1);
  for(int i=1 ;i<n+1 ;i++){
    cin >> vec[i];
  }
  while(cur != 0 && cur != 2){
    cnt++;
    pre = cur;
    cur = vec[cur];
    vec[pre] = 0;
  }
  cout << (cur?cnt:-1) << endl;
}