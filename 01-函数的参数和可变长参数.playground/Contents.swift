//: Playground - noun: a place where people can play

import UIKit

//一个函数的参数可以设定默认值 如果这个参数没有传入值 则使用默认值 如果这个参数传入了值 则会替代掉默认值
func printArray(array : [Int] ,spli : String = "," ,flag : Bool) {
    if flag{
        print("[")
    }
    for var i = 0 ; i < array.count-1 ;i++ {
        print("\(array[i])\(spli)")
    }
    print(array[array.count-1])
    if flag{
        print("]")
    }
}
printArray([1,2,3,4,5,6], flag: true)
printArray([1,2,3,4,5,6], spli: ".", flag: false)

// 可变长参数(参数的个数不确定)
func getAvg(numbers : Double...)->Double{
    var total = 0.0
    for num in numbers {
        total += num
    }
    return total / Double(numbers.count)
}
getAvg(1.1,2.1,3.1,9.1)



