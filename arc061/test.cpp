#include <bits/stdc++.h>
using namespace std;

int dfs(int i){
  if(i == 5){
    return 5;
  }else{
    return i*dfs(i+1);
  }
}
int main() {
  cout << dfs(1) << endl;
}