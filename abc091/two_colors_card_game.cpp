#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,m,cnt=0;
  string s;
  map<string,int> cards;
  cin >> n;
  for(int i=0 ;i<n ;i++){
    cin >> s;
    cards[s] += 1;
  }
  cin >> m;
  for(int i=0 ;i<m ;i++){
    cin >> s;
    cards[s] -= 1;
  }
  for(pair<string,int>p:cards){
    cnt = max(cnt,p.second);
  }
  cout << cnt << endl;
}