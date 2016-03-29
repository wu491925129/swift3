//: Playground - noun: a place where people can play

import UIKit

enum CompassPoint{
    case North
    case Sourth
    case East
    case West
    //枚举中 可以定义方法
    func show(){
        print(self)
    }
}
// 定义枚举变量
var p = CompassPoint.North
// 类型标注之后 可以使用点来获取枚举值
var p2 : CompassPoint = .Sourth
p.show()
p2.show()

// 枚举第二种定义的方法
enum CompassPoint2{
    case North,Sourth,East,West
}
var point : CompassPoint2 = .Sourth

switch point{
case .East:
    print("东")
case .West:
    print("西")
case .Sourth:
    print("南")
case .North:
    print("北")
}

// 原始值(裸值) 注意需要加类型标注
enum Week : Int {
    case Sun,Mon,Tur,Wen,Thu,Fri,Sta
}
var weekDay : Int = Week.Mon.rawValue

// 使用裸值构建枚举 可能失败 所以是可选类型
var varWeek : Week? = Week(rawValue: 2)



