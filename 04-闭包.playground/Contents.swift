//: Playground - noun: a place where people can play

import UIKit

/**
    闭包:
         Swift ------- Closure
            OC ------- Block
          Ruby ------- Block
           C++ ------- Lamda
    javascript ------- 匿名函数
    闭包就是将一段代码封装起来,变成一个类似于变量的东西,可以作为参数来传递
    在Swift中如果一个函数的参数是函数类型或者函数类型的变量,那么可以将一个功能等同的代码传给它,
    这一点和OC的Block不同,闭包就是函数,但非常灵活
    
    Block语法: ^(参数列表){ }

    闭包语法:
    {
        (参数列表) -> 返回值类型 in 执行代码
    }
*/
var sayClo : (Int,Int)->Int

//func getSum(x:Int,y:Int)->Int{
//    return x + y
//}
//sayClo = getSum
sayClo = {
    (x : Int, y : Int) in
    return x + y
}
sayClo(100,200)

// 设计一个函数 传入一个闭包
var a = 100,b = 200
func getResult(fun:(Int,Int)->Int)->Int {
    let result = fun(a,b)
    return result
}

//之前是传入 加法 或者乘法的函数
//现在传入的是一个闭包,闭包和函数等价 
getResult { (x, y) -> Int in
    return x * y
}
getResult { (x, y) -> Int in
    return x + y
}










