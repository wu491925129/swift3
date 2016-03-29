//: Playground - noun: a place where people can play

import UIKit

// 函数类型
// void test(); C函数声明
// void ()  这个就是上面函数的类型(去掉函数名,就是类型)
// void (*pfun)() 这个是上面C函数的指针(函数类型加上指针就是函数指针)
// int (*pf)(int x, int y) -> int getMax(int x , int y)

//没有参数 没有返回值的函数
//函数类型 () -> (Void)  Void可以省略  ()->()
func sayHello()->Void {
    print("hello")
}

//写一下这个函数的类型
//函数类型: (a:Int,b:Int)->Int  (形参名a,b可以省略, (Int,Int)->Int  )
func addTwoInts(a : Int ,b : Int) -> Int {
    return a + b
}
//写一下这个函数的类型
//函数类型: (Int,Int)->Int
func subTwoInts(a : Int ,b :Int) ->Int {
    return a - b
}

var function = addTwoInts
//不加类型标注就得使用外部名
function(100,b:200)
//类型标注的方式
var function2 : (Int,Int)->Int = addTwoInts
function2(100,200)

function2 = subTwoInts
function2(100,200)

func sayHello2(){
    print("hello2")
}
//定义一个变量,赋值sayHello2这个函数 要求类型标注这个变量
var function3 :()->() = sayHello2
var function4 :()->Void = sayHello2
var function5 :(Void)->Void = sayHello2
var function6 : Void->Void = sayHello2
var function7 = sayHello2

// 设计一个函数 有两个整数参数 返回这两个参数的乘积
func mul(a : Int ,b :Int)->Int {
    return a * b
}
// 设计一个函数 传入一个函数类型的参数
var a = 100,b = 200
func getResult(fun:(Int,Int)->Int)->Int {
    let result = fun(a,b)
    return result
}
getResult(addTwoInts)
getResult(mul)


// 函数类型的返回值
func test()->(Int,Int)->Int {
    return mul
}
test()(100,100)











