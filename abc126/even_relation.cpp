#include <bits/stdc++.h>
using namespace std;

int main() {
  long long n,g[110000][110000] = 1e10;
  cin >> n;
  int u,v;
  for(int i=0 ;i<n ;i++){
    cin >> u >> v;
    cin >> g[u][v];
    g[v][u] = g[u][v];
  }
  
  
}