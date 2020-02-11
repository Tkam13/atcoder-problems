#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,m;
  long a,ans = 0;
  priority_queue<long> que;
  cin >> n >> m;
  for(int i=0 ;i<n ;i++){
    cin >> a;
    que.push(a);
  }
  for(int i=0 ;i<m ;i++){
    a = que.top();
    que.pop();
    que.push(a/2);
  }
  while(!que.empty()){
    ans += que.top();
    que.pop();
  }
  cout << ans << endl;

}