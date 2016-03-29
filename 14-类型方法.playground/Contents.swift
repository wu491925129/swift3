//: Playground - noun: a place where people can play

import UIKit

// 类型方法(类方法)

class SomeClass {
    var prop : Int = 0
    class var a : Int {
        return 10
    }
    func instanceMethod(){
        print("这是一个实例方法")
        // self 代表调用这个方法的对象 类的对象
        self.prop
        SomeClass.a
    }
    class func ClassMethod() {
        print("这是一个类型方法")
//        self.prop
        // 类方法中的self 代表 类对象
        self.a
    }
}

SomeClass.ClassMethod()       //类直接调用类方法
SomeClass().instanceMethod()  //创建类 调用类中的实例方法


// 结构体中如何定义类型方法?
struct SomeStruct {
    var prop : Int = 0
    static var a : Int {
        return 10
    }
    func instanceMethod(){
        print("这是一个实例方法")
        // self 代表调用这个方法的对象 类的对象
        self.prop
        SomeStruct.a
    }
    static func StructMethod() {
        print("这是一个类型方法")
        //        self.prop
        // 类方法中的self 代表 类对象
        self.a
    }
}


