/*
 SWIFT - 02. Работа с базовыми типами
 https://www.youtube.com/watch?v=YgEHfnD6_1c
 Задание:
    1. Ипользуя println вывести диапазоны базовых типов
        Int.max;Int.min
        Int8.max;Int8.min
        UInt8.max;UInt8.min
    2. Создать три константы (Int,Float,Double)
        2.1. Создать константу суммы всех трех из п2 (Принудительный тип Int)
        2.2. Создать константу суммы всех трех из п2 (Принудительный тип Float)
        2.3. Создать константу суммы всех трех из п2 (Принудительный тип Double)
    3. Создать проверки
        3.1. (Если 2.1 < 2.3 --> println 2.3 точнее)
        3.1. (Если 2.1 > 2.3 --> println любую строку)
 */

print("Int.max: \(Int.max), \nInt.min: \(Int.min), \nInt8.max: \(Int8.max), \nInt8.min: \(Int8.min), \nUInt8.max: \(UInt8.max), \nUInt8.min: \(UInt8.min)")

let intValue: Int = 921
let floatValue: Float = 8712.2000009
let doubleValue: Double = 123.9987654125371293231

let sumWithTypeInt = intValue + Int(floatValue) + Int(doubleValue)
let sumWithTypeFloat = Float(intValue) + floatValue + Float(doubleValue)
let sumWithTypeDouble = Double(intValue) + Double(floatValue) + doubleValue

if Double(sumWithTypeInt) < sumWithTypeDouble {
    print("\nСумма с типом Int менее точна чем сумма с типом Double")
    print("Details: \nсумма с типом Int: \(Double(sumWithTypeInt))\nсумма с типом Double: \(sumWithTypeDouble)")
}
else {
    print("Сумма с типом Int более точна чем сумма с типом Double")
}

if Float(sumWithTypeInt) < sumWithTypeFloat {
    print("\nСумма с типом Int менее точна чем сумма с типом Float")
    print("Details: \nсумма с типом Int: \(Double(sumWithTypeInt))\nсумма с типом Float: \(sumWithTypeFloat)")
}
else {
    print("Сумма с типом Int более точна чем сумма с типом Float")
}
