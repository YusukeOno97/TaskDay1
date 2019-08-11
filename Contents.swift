import UIKit

var str = "Hello, playground"

// 課題1-1

// Int型で初期化
let itemA: Int = 1000
// String型で初期化
let itemB: String = "こんにちわ"
// Double型で初期化
let itemC: Double = 42.195
// Bool型で初期化
let itemD: Bool = true


// 課題1-2

// Int型定数
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

// Int型変数
var valueC: Int = 4
// valueCが10未満の場合

if valueC < 10 {
    print("\(valueC)は1桁の値です")
    
    //10以上100未満の場合
} else if valueC < 100 {
    
    print("\(valueC)は2桁の値です")
    
    // 100以上1000未満の場合
}  else if valueC < 1000 {
    
    print("\(valueC)は3桁の値です")
    
    // 1000以上の場合
} else {
    print("\(valueC)は4桁以上の値です")
}


// 課題1-4

switch valueC {
// valueCが1以上9以下の場合
case 1 ... 9:
    print("\(valueC)は1桁の値です")
// valueCが10以上99以下の場合
case 10 ... 99:
    print("\(valueC)は2桁の値です")
// valueCが100以上999以下の場合
case 100 ... 999:
    print("\(valueC)は3桁の値です")
// valueCが1000以上の場合
default:
    print("\(valueC)は4桁以上の値です")
    
}


// 課題1-5 関数単一の引数

// 引数を10倍する関数
func calculationA (value: Int){
    print(10 * value)
}
// 関数の出力
calculationA(value: 10)

// 課題1-6 関数引数の引数

// valueA % valueB を算出する関数
func calculationB (valueA: Int, valueB: Int){
    
    print(valueA % valueB)
    
}
// 関数の出力
calculationB(valueA:100, valueB: 30)


// 課題1-7 関数の戻り値

// valueA + valueB を実行する関数
func calculationC (valueA: Int, valueB: Int) -> Int {
    
    return(valueA + valueB)
    
}

// 計算結果の格納
let total: Int = calculationC(valueA: 40, valueB: 25)
// 偶数、奇数を判定
if total % 2 == 0{
    print("計算結果\(total)は偶数です。")
} else {
    print("計算結果\(total)は奇数です。")
}


// 課題1-8 クラスのインスタンス

// put関数を持つクラスHogeAを定義
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
// クラスHogeBを定義
class HogeB{
    // 名前を表示する関数
    func putName (name: String){
        print("私の名前は\(name)です")
    }
}

// HogeBクラスのタカシとケンのインスタンスを作成
let takashi: HogeB = HogeB()
let ken: HogeB = HogeB()


// それぞれのインスタンスでputName関数を呼び出す
takashi.putName(name: "たかし")
ken.putName(name: "ケン")


// 課題1-10
// クラスHogeCを定義
class HogeC{
    // イニシャライザ
    init(name: String){
        print("私の名前は\(name)です")
    }
}

// Hogeクラスのインスタンスを生成
let yamada: HogeC = HogeC(name:"やまだ")
let miyata: HogeC = HogeC(name:"みやた")

// 課題1-11 enum
// 列挙体Userを定義
enum User: String{
    case name = "名前"
    case age = "年齢"
    case bloodType = "血液型"
}

// User型のuserを定義
let user: User = .name

// userからnameを検索
switch user {
    
case.name:
    print(user.rawValue)
    
case.age:
    print(User.age.rawValue)
    
case.bloodType:
    print(User.bloodType.rawValue)
    
}


// 課題1-12
// for分を使って1~50を出力
for i in 1...50{
    print(i)
}


// 課題1-13


// Int型配列変数
var valueE = [Int]()
// 配列に1~50をそれぞれ代入
for value in 1 ... 50{
    valueE.append(value)
}
// 配列の要素を出力
print (valueE)


// 課題1-14
// String型配列変数valueFの定義
var valueF: [String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]

// ナッシュ削除
valueF.remove(at:2)
// 配列の出力
print(valueF)


// 課題1-15


// Int型配列valueGの定義
var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]

// 昇順にソート
valueG.sort {$0 < $1}
print(valueG)

// 降順にソート
valueG.sort {$0 > $1}
print(valueG)


// 課題1-16
// valueGの要素数を出力

print(valueG.count)


//  課題1-17

// 辞書型の定数valueHの定義
let valueH: [String: Any] = [
    "key": "value",
    "a": 1,
    "b": 2,
    "c": 3
]

// キーがbの値を出力
print(valueH["b"])


// 平日課題1-18
// オプショナルbinding
if let valueOfB = valueH["b"] {
    print(valueOfB)
} else {
    print("値はnilです。")
}


// 課題1-19
// valueOfK がvalueH["k"]だったらvalueOfKを出力　nilだったら「値はnilです」を出力
if let valueOfK = valueH["k"] {
    print(valueOfK)
} else {
    print("値はnilです。")
}


// 課題1-20
// Any?型の配列valueIの定義
let valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]

// オプショナルbinding
for i in 0...valueI.count - 1 {
    if let value = valueI[i] as? Int {
        print("数値は\(value)です。")
    } else if let value = valueI[i] as? String {
        print(value)
    } else {
        print("値はnilです。")
    }
}













