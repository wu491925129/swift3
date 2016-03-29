//: Playground - noun: a place where people can play

import UIKit

/** 冒泡排序 相邻两个元素进行比较,满足条件则换位 
    data 就是要排序的数据 function是排序规则
 */

func paopaoSort(inout data : [Int] ,function : (Int,Int) -> Bool) {
    for var i = 0 ; i < data.count-1 ; i++ {
        for var j = 0 ; i < data.count - i - 1 ; j++ {
            //相邻元素比较 满足条件交换
            if function(data[j],data[j+1]) {
                let temp = data[j]
                data[j] = data[j+1]
                data[j+1] = temp
            }
        }
    }
}
func rule(a : Int , _ b : Int)->Bool {
    return a < b
}
var data = [9,5,2,7,8,1]

// 最规范的闭包写法
paopaoSort(&data, function: rule)

// 闭包可以缩写 参数类型可以省略
paopaoSort(&data) { (a, b) -> Bool in
    return a > b
}

// 返回值类型 可以省略
paopaoSort(&data) { (a, b) in
    return a < b
}

// 如果只有一条语句 return 可以省略
paopaoSort(&data) { (a, b) in
    a > b
}

// 参数名 也可以省略 $0 代表第一个参数 $1代表第二个参数
paopaoSort(&data) {
    $0 > $1
}

paopaoSort(&data, function: > )





