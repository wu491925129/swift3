//: Playground - noun: a place where people can play

import UIKit

/**
    函数重载 (又叫方法重载)
    两个及以上的方法 方法名(函数名)相同 参数列表不同 swift参数的外部名不同 都可以形成重载关系
    参数列表不同:
        1.参数的个数不同
        2.参数的类型不同
        3.参数的顺序不同
        4.swift中的外部名不同
*/
func test() {print("test()") }
func test(a : Int) {print("test(Int)") }
func test(a : Int , b : Int) {print("test(Int,Int)") }
func test(a b : Int) {print("test(a:Int)") }

