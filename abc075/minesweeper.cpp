#include <bits/stdc++.h>
using namespace std;

int main() {
  int h,w,cnt;
  cin >> h >> w;
  char vec[h][w];
  char ans[h][w];
  for(int i=0;i<h;i++){
    for(int j=0;j<w;j++){
      cin >> vec[i][j];
    }
  }
  for(int i=0;i<h;i++){
    for(int j=0;j<w;j++){
      cnt = 0;
      if(vec[i][j] == '.'){
        for(int k=-1;k<=1;k++){
          for(int l=-1;l<=1;l++){
            if(i+k<0 || i+k>=h || j+l<0 || j+l>=w){
              continue;
            }else{
              if(vec[i+k][j+l] == '#'){
                cnt++;
              }
            }
          }
        }
        ans[i][j] = '0' + cnt;
      }else{
        ans[i][j] = '#';
      }
    }
  }
  for(int i=0;i<h;i++){
    for(int j=0;j<w;j++){
      cout << ans[i][j];
    }
    cout << endl;
  }
}