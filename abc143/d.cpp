#include <bits/stdc++.h>
using namespace std;

int main() {
  long n,ans = 0;
  cin >> n;
  vector<int> ls(n);
  for(int i=0 ;i<n ;i++){
    cin >> ls[i];
  }
  sort(ls.begin(),ls.end());
  for(int i=0 ;i<n-2 ;i++){
    for(int j=i+1 ;j<n-1 ;j++){
      for(int k=j+1 ;k<n ;k++){
        if(ls[i] + ls[j] > ls[k]){
          ans++;
        }
      }
    }
  }

  cout << ans << endl;
}