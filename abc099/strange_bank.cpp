#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,N,cnt=0;
  cin >> n;
  N = n;
  priority_queue<int> que;
  que.push(1);
  while(N /= 6){
    cnt += 1;
  }
  int k = 1;
  for(int i=0 ;i<cnt ;i++){
    k *= 6;
    que.push(k);
  }
  N = n;
  cnt = 0;
  while(N /=9){
    cnt += 1;
  }
  k = 1;
  for(int i=0 ;i<cnt ;i++){
    k *= 9;
    que.push(k);
  }
  cnt = 0;
  while(n){
    int j = que.top();
    cnt += n/j;
    n %= j;
    que.pop();
  }
  cout << cnt << endl;
}