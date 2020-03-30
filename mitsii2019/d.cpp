#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,ans = 0;
  string s;
  cin >> n >> s;
  for(int i = 0;i < 1000; i++){
    ostringstream sout;
    sout << setw(3) << setfill('0') << i;
    string t = sout.str();
    int k = 0;
    for (int j = 0; j < n; j++)
    {
      if(s[j] == t[k]){
        k++;
      }
      if(k == 3){
        break;
      }
    }
    if(k == 3){
      ans++;
    }
  }
  cout << ans << endl;
}