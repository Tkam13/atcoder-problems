#include <bits/stdc++.h>
using namespace std;

int main() {
  int n,cnt,ans=0;
  string s;
  cin >> n >> s;
  int i = 2;
    cnt = 0;
    vector<char> x(s.begin(),s.begin()+i);
    vector<char> y(s.begin()+i,s.end());
  for(char c :x){
    cout << c << " ";
  }
  cout << endl;
  for(char c :y){
    cout << c << " ";
  }
  cout << endl;
  cout << *(s.begin()+1) << endl;
}