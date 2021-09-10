#include<bits/stdc++.h>
#include<cmath>
using namespace std;

int main(){
  int N=95; // N must be greater than 0;
    unsigned long long term1 = 0, term2 = 1;
      
          //cin>>N;
        if(N<=0){
        cout<<"N must be greater than 0 "<< "\n";
        }
		cout<<term1<<"\n"<<term2<<"\n";
		for(int i=2;i<N;++i){
		unsigned long long term3= term1+term2;
        cout<<term3<<"\n";
        term1= term2;
		term2= term3;
		}
   
  return 0;
  }
