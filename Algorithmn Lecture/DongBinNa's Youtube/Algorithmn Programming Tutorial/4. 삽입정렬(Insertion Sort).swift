//
//  4.삽입정렬(Insertion Sort).swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/18.
//
//  삽입정렬의 경우 필요할 때만 값의 위치를 바꿔 정렬하는 방법이다.
//  시간복잡도는 O(N^2)이지만 앞의 두 정렬보다는 속도가 빠르다.

import Foundation

//MARK: - 강의
public func insertionSort(){
    var temp: Int = 0
    var array: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    for i in  0...8 {
        var j = i
        while array[j] > array[j + 1]{
            temp = array[j]
            array[j] = array[j + 1]
            array[j + 1] = temp
            j -= 1
        }
    }
    print(array)
}

//MARK: - 내가 구현한 것
public func insertionSort2(){
    var temp: Int = 0
    var array: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    
    for i in 0...array.count - 2 {
        var j = i
        while array[j] > array[j + 1]{
            temp = array[j]
            array[j] = array[j + 1]
            array[j + 1] = temp
            j -= 1
        }
    }
    print(array)
}
