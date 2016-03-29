//: Playground - noun: a place where people can play

import UIKit

/**
    swift中的属性 有两种分类方式
    第一种方式:
        存储属性(store propertites):用变量或者常量来保存属性值
        计算属性(calculate propertites):不是通过变量或者常量来存储属性,属性值是通过计算获得
        举例:
        出生日期 : 存储属性
        年龄 : 计算属性
    第二种分类方式:
        实例属性
        类型属性
*/

struct MyRange {
    // 存储属性
    var location : Int
    // 存储属性 逐一初始化器 也可以给常量初始化
    let length : Int
}
var myRange = MyRange(location: 0, length: 100)

/** 计算属性 */
struct Point {
    var x = 0.0,y = 0.0
}

struct Size {
    var w = 0.0,h = 0.0
}

struct Rect {
    // 存储属性
    var origin = Point()
    var size = Size()
    // 中心点 计算属性 提供get set 叫做可读写计算属性
    // 如果只有 get 叫只读计算属性
    var center : Point {
        get{
            let centerX = origin.x + size.w * 0.5
            let centerY = origin.y + size.h * 0.5
            return Point(x: centerX, y: centerY)
        }
        // 如果这里没有参数 则默认使用newValue
        set{
            let newOriginX = newValue.x - size.w * 0.5
            let newOriginY = newValue.y - size.h * 0.5
            origin = Point(x: newOriginX, y: newOriginY)
//        set(newCenter){
//            let newOriginX = newCenter.x - size.w * 0.5
//            let newOriginY = newCenter.y - size.h * 0.5
//            origin = Point(x: newOriginX, y: newOriginY)
        }
    }
    // 如果只有get并且只有一行代码 则get可以省略
    var center2 : Point{
        return Point(x: 800, y: 900)
    }
}

var rect = Rect(origin: Point(x: 0, y: 0), size: Size(w: 300, h: 300))
rect.center.x
rect.center.y
rect.center = Point(x: 200, y: 200)
rect.origin.x
rect.origin.y

// 延迟属性 类似于OC中的懒加载(延迟加载)
class DataImporter{
    init(){
        print("DataImporter 被创建")
    }
    var fileName = "data.txt"
}

class DataManager {
    lazy var dataImporter = DataImporter() // 加一个lazy 类似于懒加载
    var data = [String]()
}

var dataManager = DataManager()
dataManager.dataImporter














