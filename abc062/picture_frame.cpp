#include <bits/stdc++.h>
using namespace std;

int main() {
  int h,w;
  string frame,x;
  cin >> h >> w;
  for(int i=0;i < w+2;i ++){
    frame += "#";
  }
  cout << frame << endl;
  for(int i=0;i < h;i ++){
    cin >> x;
    cout << "#" << x << "#" << endl;
  }
  cout << frame << endl;
}