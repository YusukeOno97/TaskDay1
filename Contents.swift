import UIKit

var str = "Hello, playground"

// 課題1-1
let itemA: Int = 1000
let itemB: String = "こんにちわ"

let itemC: Double = 42.195
let itemD: Bool = true


// 課題2-2

let valueA: Int = 100
let valueB: Int = 20

// 足し算
print(valueA + valueB)
// 引き算
print(valueA - valueB)
// 掛け算
print(valueA * valueB)
// 割り算
print(valueA / valueB)


// 課題1-3
var valueC: Int = 4

if valueC < 10 {
    print("\(valueC)は1桁の値です")
    
} else if valueC < 100 {
    
    print("\(valueC)は2桁の値です")
    
}  else if valueC < 1000 {
    
    print("\(valueC)は3桁の値です")
    
} else {
    print("\(valueC)は4桁以上の値です")
}


// 課題1-4
switch valueC {
case 1 ... 9:
    print("\(valueC)は1桁の値です")
    
case 10 ... 99:
    print("\(valueC)は2桁の値です")

case 100 ... 999:
    print("\(valueC)は3桁の値です")

default:
    print("\(valueC)は4桁以上の値です")

}
    

// 課題1-5 関数単一の引数

func calculationA (value: Int){
    print(10 * value)
}

calculationA(value: 10)

// 課題1-6 関数引数の引数
func calculationB (valueA: Int, valueB: Int){
    
    print(valueA % valueB)
    
}

calculationB(valueA:100, valueB: 30)


// 課題1-7 関数の戻り値
func calculationC (valueA: Int, valueB: Int) -> Int {
    
    return(valueA + valueB)
    
}

let total: Int = calculationC(valueA: 40, valueB: 25)
if total % 2 == 0{
    print("計算結果\(total)は偶数です。")
} else {
    print("計算結果\(total)は奇数です。")
}


// 課題1-8 クラスのインスタンス


class HogeA{
    func put (){
        print("クラスAインスタンスです")
    }
}

// HogeAクラスのインスタンスを生成
let insA: HogeA = HogeA()

// HogeAのputメソッドを呼び出す
insA.put()


// 課題1-9

class HogeB{
    func putName (name: String){
        print("私の名前は\(name)です")
    }
}

// HogeBクラスのタカシとケンのインスタンスを作成
let takashi: HogeB = HogeB()
let ken: HogeB = HogeB()

takashi.putName(name: "たかし")
ken.putName(name: "ケン")


// 課題1-10

class HogeC{
    init(name: String){
        print("私の名前は\(name)です")
    }
}


let yamada: HogeC = HogeC(name:"やまだ")
let miyata: HogeC = HogeC(name:"みやた")

// 課題1-11 enum

enum User: String{
    case name = "名前"
    case age = "年齢"
    case bloodType = "血液型"
}

let user: User = .name

switch user {
    
case.name:
    print(user.rawValue)
    
case.age:
    print(User.age.rawValue)
    
case.bloodType:
    print(User.bloodType.rawValue)
    
}


// 課題1-12
for i in 1...50{
    print(i)
}


// 課題1-13

var valueE = [Int]()
for value in 1 ... 50{
    valueE.append(value)
}

print (valueE)


// 課題1-14

var valueF = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
// ナッシュ削除
valueF.remove(at:2)
print(valueF)


// 課題1-15

var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]

valueG.sort {$0 < $1}
print(valueG)

valueG.sort {$0 > $1}
print(valueG)


// 課題1-16

print(valueG.count)


//  課題1-17

let valueH: [String: Any] = [
    "key": "value",
    "a": 1,
    "b": 2,
    "c": 3
]

// キーがbの値を出力
print(valueH["b"])


// 平日課題1-18

if let valueOfB = valueH["b"] {
    print(valueOfB)
} else {
    print("値はnilです。")
}


// 課題1-19
if let valueOfK = valueH["k"] {
    print(valueOfK)
} else {
    print("値はnilです。")
}


// 課題1-20

let valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]


for i in 0...valueI.count - 1 {
    if let value = valueI[i] as? Int {
        print("数値は\(value)です。")
    } else if let value = valueI[i] as? String {
        print(value)
    } else {
        print("値はnilです。")
    }
}


