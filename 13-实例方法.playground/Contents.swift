//: Playground - noun: a place where people can play

import UIKit

// 方法分为 实例方法 和 类型方法(类方法)
class counter {
    var count = 0
    func increment(){
        count++
    }
    func incrementBy(amount : Int){
        count += amount
    }
}
// 先创建对象 才能调用实例方法(方法存在代码区,属性储存在程序中)
counter().increment()
counter().incrementBy(100)

// 值类型的实例方法
struct Point{
    var x = 10
    var y = 0
    var z = 200
    static var sx = 100
    func show(){
        print(x)
        print(y)
        print(z)
        print(Point.sx)
//        x = 123
        Point.sx = 123
    }
    // 值类型的实例方法 默认不可以修改实例属性 如果非要修改 则方法前面加mutating修饰
    mutating func setValue(){
        x = 123
    }
}











