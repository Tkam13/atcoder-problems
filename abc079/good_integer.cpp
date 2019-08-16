#include <bits/stdc++.h>
using namespace std;

int main() {
 string n;
 int count = 1;
 bool flag = true;
 cin >> n;
 for(int i = 0;i<3;i++){
   if(n[i] == n[i+1]){
     count ++;
     if(count == 3){
       cout << "Yes" << endl;
       flag = false;
     }
   }else{
     count = 1;
   }
 }
 if(flag == true){
   cout << "No" << endl;
 }
}