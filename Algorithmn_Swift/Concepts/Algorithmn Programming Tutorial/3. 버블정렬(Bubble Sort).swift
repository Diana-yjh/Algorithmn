//
//  3.버블정렬(Bubble Sort).swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/18.
//
//  버블정렬은 당장 옆에 있는 값과 비교하여 값을 정렬한다.
//  버블 정렬의 시간 복잡도는 O(N*N)이며 정렬 중 가장 시간효율이 좋지 못한 정렬방법이다.

import Foundation

//MARK: - 강의(C 기준)
public func bubbleSort(){
    var temp: Int = 0
    var array: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    
    for i in 0...8 {
        for j in 0...8 - i {
            if(array[j] > array[j + 1]){
                temp = array[j]
                array[j] = array[j + 1]
                array[j + 1] = temp
            }
        }
    }
    print(array)
}

//MARK: - 내가 구현한 것
public func bubbleSort2(){
    var temp: Int = 0
    var array: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    
    for i in 0...array.count - 2 {
        for j in 0...(array.count - 2 - i){
            if array[j] > array[j + 1] {
                temp = array[j + 1]
                array[j + 1] = array[j]
                array[j] = temp
            }
        }
    }
    print(array)
}
