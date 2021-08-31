//
//  main.cpp
//  Algorithmn_C++
//
//  Created by Yejin Hong on 2021/08/24.
//

#include <iostream>
using namespace std;

// call function
void stack(string input);

// use function
int main(){
    int x;
    cin >> x;
    
    for(int i = 0; i < x; i++){
        string input;
        cin >> input;
        stack(input);
    }
}
