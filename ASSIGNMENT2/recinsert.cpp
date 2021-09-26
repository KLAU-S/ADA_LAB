#include <bits/stdc++.h>
using namespace std;

void recinsert(int arr[], int N){
    if (N<=1)
    return;
    recinsert(arr, N-1);
    int last = arr[N-1];
    int j = N-2;
    while (j>=0 && arr[j]>last)
    {
        arr[j+1] = arr[j];
        j--;
    }
    arr[j+1] = last;
}

int main(){
    int N = 3000;
    int arr[N];
    int i= 0;
    while (i<=N){
        int randn = (rand()%(N - 0+1)) + 0;
        arr[i]=randn;
        i++;
    }
    recinsert(arr, N);
    for (int i=0; i<N; i++){
        cout<<arr[i]<<"\n";
    }
}