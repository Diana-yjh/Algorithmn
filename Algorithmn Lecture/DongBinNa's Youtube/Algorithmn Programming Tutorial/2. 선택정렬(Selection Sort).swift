//
//  2.선택정렬(Selection Sort).swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/18.
//
//  선택정렬은 배열의 처음부터 끝까지 반복적으로 탐색하며
//  최소(or 최대)값을 찾았을 때 해당 값을 배열의 맨 앞 값과 바꿔주며 정렬을 진행한다.

import Foundation

//MARK: - 강의
public func selectionSort(){
    var min: Int = 0
    var index: Int = 0
    var temp: Int = 0
    var array: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    for i in 0...9 {
        min = 999;
        var j = i
        while j < 10 {
            if(min > array[j]){
                min = array[j]
                index = j
            }
            j += 1
        }
        temp = array[i]
        array[i] = array[index]
        array[index] = temp
    }
    print(array)
}

//MARK: - 내가 구현한 것
public func selectionSort2(){
    var min: Int = 0
    var index: Int = 0
    var array: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    
    for i in 0...array.count - 1 {
        min = 999
        var j = i
        while j < 10 {
            if min > array[j] {
                min = array[j]
                index = j
            }
            j += 1
        }
        array[index] = array[i]
        array[i] = min
    }
    print(array)
}
