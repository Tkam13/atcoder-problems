#include <bits/stdc++.h>
using namespace std;

int main() {
  int n;
  long a,current;
  priority_queue<long,vector<long>,greater<long> > queue;
  cin >> n >> a ;
  queue.push(a);
  current = a;
  for(int i=0 ;i<n-1 ;i++){
    cin >> a;
    if(current < a){
      current = a;
    }else{
      queue.pop();
      queue.push(current);
      long color_min = queue.top();
      if(a > color_min){
        current = a;
      }else{
        queue.push(a);
        current = a;
      }
    }
  }
  cout << queue.size() << endl;
}