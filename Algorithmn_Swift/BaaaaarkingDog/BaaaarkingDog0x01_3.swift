func BaaaarkingDog0x01_3() {
    let input = Int(readLine()!)!
    
    if !Array(1...10000)
        .filter ({ $0 * $0 == input })
        .isEmpty {print("1")} else {print("0")}
}
