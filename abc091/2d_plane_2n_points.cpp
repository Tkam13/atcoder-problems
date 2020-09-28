#include <bits/stdc++.h>
using namespace std;

int main()
{
  int n;
  cin >> n;
  int red[n][3], blue[n][3];
  for (int i = 0; i < n; i++)
  {
    cin >> red[i][0] >> red[i][1];
    red[i][2] = pow(red[i][0], 2) + pow(red[i][0], 2);
  }
  for (int i = 0; i < n; i++)
  {
    cin >> blue[i][0] >> blue[i][1];
    blue[i][2] = pow(red[i][0], 2) + pow(blue[i][0], 2);
  }
}
