#include <bits/stdc++.h>
using namespace std;

int main() {
  int n;
  cin >> n;
  vector<int> xs(n);
  for(int i=0 ;i<n ;i++){
    long x;
    cin >> x;
    xs[i] = x;
  }
  vector<int> temp;
  temp.insert(temp.begin(),xs.begin(),xs.end());
  sort(temp.begin(),temp.end());
  int mid = temp[n/2];
  for(int x:xs){
    if(x<mid){
      cout << mid << endl;
    }else{
      cout << temp[n/2-1] << endl;
    }
  }
}