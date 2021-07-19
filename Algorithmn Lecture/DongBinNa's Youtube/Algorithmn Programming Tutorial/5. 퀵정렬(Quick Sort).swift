//
//  5. 퀵정렬(Quick Sort).swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/19.
//
// 퀵정렬은 맨 앞의 값을 피봇(pivot)값으로 지정한 뒤 해당 값을 기준으로
// 왼쪽부터는 피봇 값보다 큰 값을, 오른쪽부터는 피봇 값보다 작은 값을 찾아 두 값의 위치를 변경하며 정렬하는 방법이다.
// 시간 복잡도는 O(N^logN)으로 속도가 빨라 유용하다.

import Foundation

//MARK: - 강의
public func quickSort(_ data: [Int], _ start: Int, _ end: Int){
    var data: [Int] = [1, 10, 5, 8, 7, 6, 4, 3, 2, 9]
    let start: Int = 0
    let end: Int = 0
    let pivot = start
    var i = start + 1
    var j = end
    var temp: Int = 0
    
    if start >= end {
        return;
    }
    
    while i <= j {//엇갈릴 때까지 반복
        while data[i] <= data[pivot] {//왼쪽부터 작은것을 찾는다
            i += 1
        }
        while data[j] >= data[pivot] && j > start {
            j -= 1
        }
        if i > j {//엇갈린 경우
            temp = data[j]
            data[j] = data[i]
            data[pivot] = temp
        } else {
            temp = data[j]
            data[j] = data[i]
            data[i] = temp
        }
    }
    quickSort(data, 0, j - 1)
    quickSort(data, j + 1, end)
    print(data)
}

//MARK: - 내가 구현한 것
public func quickSort2(){
    
}
