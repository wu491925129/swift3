//: Playground - noun: a place where people can play

import UIKit

/**
    类型属性
    在结构体中 或者枚举中 用static 修饰的属性 以及在类中 使用class修饰的属性叫类型属性
    类型属性 属于这个类 和 对象无关
    在struct 中 定义的类型属性可以是存储属性 也可以是计算属性
    在class 中 类型属性只能是计算属性(存储属性 如果非要设计成类型属性 可以加static )
*/

//下面中a和b是实例属性;x和y有static修饰是类型属性
struct SomeStruct {
    // 存储属性
    var a = 10
    // 计算属性
    var b : Int {
        return 10
    }
    // 类型属性
    static var x = 10
    static var y : Int {
        return 10
    }
}

// 如何访问 a b x y ?

var someStruct1 = SomeStruct()
someStruct1.a
someStruct1.b
//someStruct1.x
// 需要通过类型访问类型属性
SomeStruct.x
SomeStruct.y

class SomeClass {
    // 存储属性
    var a = 10
    // 计算属性
    var b : Int {
        return 10
    }
    // 类型属性
//    static var x = 10
//    static var y : Int {
//        return 10
//    }
    static var x = 10
    class var y : Int {
        return 10
    }
}
SomeClass.x
SomeClass.y
SomeClass().a
SomeClass().b







