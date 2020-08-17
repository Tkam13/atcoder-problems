#include <bits/stdc++.h>
using namespace std;

bool solve(int n){
	bool flag = true;
	for(int i=0 ;i<=sqrt(n) ;i++){
		if(n % i == 0 && (m[i] == 1 || m[n/i] == 1){
			flag = false;
			break;
		}
	}
	return flag;
}

int main() {
	map<int,int> m;
	int n,ans=0;
	vector<int> as;
	cin >> n;
	as.resize(n);
  for (int i = 0; i < n; i++)
	{
		cin >> as[i];
	}
	as.sort();
	for (int i = 0; i < n - 1; i++)
	{
		if(as[i] == as[i+1]){
			m[as[i]] = 1;
		}
	}

	for (int i = 0; i < n; i++)
	{
		if(m[as[i]] == 1){
			continue;
		}
		bool flag = solve(as[i]);
		if(flag){
			ans++;
			m[as[i]] = 1;
		}
	}
	cout << ans << endl;
}