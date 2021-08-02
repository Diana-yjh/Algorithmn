//
//  8. 병합정렬(Merge Sort).swift
//  Algorithmn
//
//  Created by Yejin Hong on 2021/07/26.
//
// 병합정렬은
//
import Foundation

//MARK: - https://velog.io/@hhhan0315 참고
//[3, 7, 8, 1, 5,     9, 6, 10, 2, 4]
public func mergeSort<Element>(_ array: [Element]) -> [Element] where Element: Comparable {
    //재귀호출에서는 반드시 탈출조건을 명시해주어야 한다
    guard array.count > 1 else {
        return array
    }
    
    let middle = array.count / 2
    let left = mergeSort(Array(array[..<middle]))
    let right = mergeSort(Array(array[middle...]))
    return merge(left, right)
}

public func merge<Element>(_ left: [Element], _ right: [Element]) -> [Element] where Element: Comparable {
    var leftIndex = 0
    var rightIndex = 0
    var result: [Element] = []
    
    while leftIndex < left.count && rightIndex < right.count {
        let leftElement = left[leftIndex]
        let rightElement = right[rightIndex]
        
        if leftElement < rightElement {
            result.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            result.append(rightElement)
            rightIndex += 1
        } else {
            result.append(leftElement)
            result.append(rightElement)
            leftIndex += 1
            rightIndex += 1
        }
    }
    
    if leftIndex < left.count {
        result.append(contentsOf: left[leftIndex...])
    }
    if rightIndex < right.count {
        result.append(contentsOf: right[rightIndex...])
    }
    return result
}
