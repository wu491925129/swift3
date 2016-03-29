//: Playground - noun: a place where people can play

import UIKit

var names = ["aaa","cc","dd","bb"]
names.sort()
names.sort { (a, b) -> Bool in
    return a > b
}
names
names.sort{$0 > $1}
names

// 拖尾闭包 如果一个函数的最后一个参数是闭包 可以将逻辑写在()外面
func test(a : Int , b : Int , function : (Int)->Int ){

}

test(100, b: 200) { (x) -> Int in
    return x + 100
}
// 之前的写法 三个参数都写在()里面
test(100, b: 200, function: {(x : Int)->Int in return x + 100})

// 写一个函数 第一个参数传入一个Int类型 第二个参数是一个函数类型()->Int 第三个参数是String类型 第四个参数是一个Void->void 如果第一个参数大于10 就调用第一个函数 否则调用第二个函数 然后随便传入一些值测试这个函数
func test(a : Int,function1 : ()->Int, b : String , function2 : ()->()) {
    if a > 10 {
       
    }
}








