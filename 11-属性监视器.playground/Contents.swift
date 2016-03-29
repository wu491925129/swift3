//: Playground - noun: a place where people can play

import UIKit

/**
    属性监视器
    是一段代码 这段代码会在属性发生变化时调用 类似于OC中的KVO
    1.计算属性 延迟属性 不能设置属性监视器 只有存储属性可以
    2.属性监视器 在属性初始化时不调用
    3.属性监视器有两种 willSet / didSet  有两个内置变量newValue / oldValue
    4.一个属性可以有一个属性监视器 也可以有两个
*/
class StepCounter {
    var labelText = "文本内容"
    // 存储属性
    var a : Int = 10
    // 只读计算属性
    var b : Int {
        return 10
    }
    // 存储属性 加属性监视器
    var totalStep : Int = 10 {
        willSet(newValue){
            print("属性将要变化 要改变成\(newValue) 现在是\(totalStep)")
        }
        didSet{
            print("属性已经发生了改变 原来的值是\(oldValue) 现在是\(totalStep)")
        }
    }
}
var stepCounter = StepCounter()
stepCounter.totalStep = 20
stepCounter.totalStep = 30










