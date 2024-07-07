func BaaaarkingDog0x01_2() {//50인 경우 문제
    let array = readLine()!
        .split(separator: " ")
        .map { Int($0)! }
    
    if !array
        .filter({ array.contains(100 - $0) })
        .isEmpty { print("1") } else { print("0") }
}
