//: Playground - noun: a place where people can play

import UIKit

// 写一个函数 第一个参数传入一个Int类型 第二个参数是一个函数类型()->Int 第三个参数是String类型 第四个参数是一个Void->void 如果第一个参数大于10 就调用第一个函数 否则调用第二个函数 然后随便传入一些值测试这个函数
func test(a : Int,function1 : ()->Int, b : String , function2 : ()->()) {
    if a > 10 {
    function1()
    }else{
    function2()
    }
}

test(15, function1: { () -> Int in
    print("调用function1")
    return 11
    }, b: "aaa") { () -> () in
        print("调用function2")
}