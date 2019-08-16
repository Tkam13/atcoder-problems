#include <bits/stdc++.h>
using namespace std;

int minNaturalNumber(double i){
  if(i<0){
    return 0;
  }else{
    return ceil(i);
  }
}

int main() {
  double c,s,f;
  int n;
  queue<double> que;
  cin >> n;
  for(int i=0 ;i<n-1 ;i++){
    cin >> c >> s >> f;
    que.push(0);
    for(int k=0 ;k<que.size() ;k++){
      double q = que.front();
      que.push(minNaturalNumber((q-s)/f)*f+s+c);
      que.pop();
    }
  }
  que.push(0);
  for(int i=0 ;i<n ;i++){
    cout << que.front() << endl;
    que.pop();
  }
}