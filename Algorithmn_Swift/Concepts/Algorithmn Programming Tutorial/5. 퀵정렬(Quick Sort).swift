//
//  5. 퀵정렬(Quick Sort).swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/19.
//
// 퀵정렬은 맨 앞의 값을 피봇(pivot)값으로 지정한 뒤 해당 값을 기준으로
// 왼쪽부터는 피봇 값보다 큰 값을, 오른쪽부터는 피봇 값보다 작은 값을 찾아 두 값의 위치를 변경하며 정렬하는 방법이다.
// 엇갈린 경우 작은 쪽과 피봇 값의 위치를 변경한다.
// 시간 복잡도는 O(N^logN)으로 속도가 빨라 유용하다.

import Foundation

//MARK: - 강의(C 기준)
//[3, 7, 8, 1, 5, 9, 6, 10, 2, 4]
//틀림
public func quickSort(_ data: [Int], _ start: Int, _ end: Int){
//    var array: [Int] = data
//    var pivot: Int = start
//    var i: Int = start + 1
//    var j: Int = end
//    var temp: Int = 0
//
//    if start >= end {
//        print(array)
//        return
//    }
//
//    while i <= j {//엇갈릴 때까지 반복
//        while array[i] <= array[pivot] {//왼쪽부터 피봇보다 큰 값을 구한다
//            i += 1
//        }
//        while array[j] >= array[pivot] && j > start {//오른쪽부터 피봇보다 작은 값을 구한다
//            j -= 1
//        }
//        if i > j {//엇갈린 경우
//            temp = array[j]
//            array[j] = array[pivot]
//            array[pivot] = temp
//            pivot = i
//        } else {
//            temp = array[j]
//            array[j] = array[i]
//            array[i] = temp
//
//
//            quickSort(array, pivot, j - 1)
//            quickSort(array, j, end - 1)
//        }
//    }
}

//MARK: - https://atelier-chez-moi.tistory.com/87 참고
//[3, 7, 8, 1, 5, 9, 6, 10, 2, 4]
public func quickSort2(array: [Int]) -> [Int]{
    
    if array.count < 2 {
        return array
    } else {
        let pivot = array[0]
        let less = array.filter { $0 < pivot }
        let greater = array.filter { $0 > pivot }
        let result = quickSort2(array: less) + [pivot] + quickSort2(array: greater)
        print("result = \(result)")
        return result
    }
}

//MARK: - 내가 구현한 것
func quickSort3(array: [Int]) -> [Int]{
    if array.count < 2 {
        return array
    } else {
        let pivot = array[0]
        let less = array.filter{ $0 < pivot }
        let greater = array.filter{ $0 > pivot }
        let result = quickSort3(array: less) + [pivot] + quickSort3(array: greater)
        print(result)
        return result
    }
}
