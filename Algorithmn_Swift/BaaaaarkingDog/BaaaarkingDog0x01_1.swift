func BaaaarkingDog0x01_1(array: [Int]) {
    let input = readLine()!
    var array: [Int] = Array(1...Int(input)!)
    
    print(array
        .filter({ $0 % 3 == 0 || $0 % 5 == 0})
        .reduce(0, +))
}
