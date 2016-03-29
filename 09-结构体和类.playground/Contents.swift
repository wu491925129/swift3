//: Playground - noun: a place where people can play

import UIKit

/** 
    结构体和类
    相同点: 
        1.结构体和类都是表达一种类型
        2.都可以在内部定义属性和方法
        3.都可以定义下标运算符(了解)
        4.都可以定义初始化方法(初始化器/构造器/构造方法;类似于OC的init)
        5.都可以扩展现有的功能(OC中叫分类 Swift中没有分类 叫扩展)
        6.都可以遵守协议
    不同点:
        1.类可以继承,结构体不能
        2.类有多肽,结构体没有
        3.类的内存支持自动引用计数,结构体不支持;结构体变量都是在栈中分配内存的,出了作用域会自动释放
        4.类是引用类型 ,结构体是值类型
*/

// 结构体属性 如果没有初始化 则编译器会提供一个逐一初始化器
// 属性都初始化了 就提供一个逐一初始化器 和一个无参的初始化器
struct Resolution {
    var width : Float = 0.0
    var height: Float = 0.0
}

//var r = Resolution(width: <#T##Float#>, height: <#T##Float#>)
var r2 = Resolution()

// 类中的属性声明时 必须初始化 除非他是可选值类型
class VideoMode {
    var resolution = Resolution()
    var frameRate : Float = 0.0
    var name : String?
}

// 这是引用类型
var vmode = VideoMode()
var vmode2 = vmode
vmode.name = "张三"
vmode2.name

// 引用类型比较地址是否相同
if vmode === vmode2 {
    print("地址相同")
}
if vmode !== vmode2 {
    print("地址不同")
}















