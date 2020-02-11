#include <bits/stdc++.h>
using namespace std;

int main() {
  int h,w,ans = 0,memo_h[2010][2010], memo_w[2010][2010];
  string s;
  vector<string> s_array;
  cin >> h >> w;
  for(int i=0 ;i<h ;i++){
    cin >> s;
    s_array.emplace_back(s);
  }

  for(int i=0 ;i<h ;i++){
    int cnt_w = 0,start_j = 0;
    for(int j=0 ;j<w ;j++){
      if(s_array[i][j] == '.'){
        cnt_w ++ ;
      }
      if(s_array[i][j] == '#' || j == w - 1){
        for(int j_dash=start_j ;j_dash<j+1 ;j_dash++){
          memo_w[i][j_dash] = cnt_w;
        }
        if(s_array[i][j] == '#'){
          memo_w[i][j] =0;
        }
        start_j = j + 1;
        cnt_w = 0;
      }
    }
  }

  for(int j=0 ;j<w ;j++){
    int cnt_h = 0,start_i = 0;
    for(int i=0 ;i<h ;i++){
      if(s_array[i][j] == '.'){
        cnt_h ++ ;
      }
      if(s_array[i][j] == '#' || i == h - 1){
        for(int i_dash=start_i ;i_dash<i+1 ;i_dash++){
          memo_h[i_dash][j] = cnt_h;
        }
        if(s_array[i][j] == '#'){
          memo_h[i][j] =0;
        }
        start_i = i + 1;
        cnt_h = 0;
      }
    }
  }

  for(int i=0 ;i<h ;i++){
    for(int j=0 ;j<w ;j++){
      ans = max(ans, memo_h[i][j] + memo_w[i][j] - 1);
    }
  }
  cout << ans << endl;

}