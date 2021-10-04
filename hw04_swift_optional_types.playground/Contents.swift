/*
 SWIFT - 04. Опциональные типы
 https://www.youtube.com/watch?v=q4p1HW_cCSk&t
 Задание:
    1. Сделать 5 констант (тип String цифры/буквы/цыфры+буквы
        1.1. Найти сумму всех констант, приведя к Int (если он Int)
        1.2. Некоторые константы через опциональный биндинг
    2. Получаем tuple и может прийти с 3 параметрами (statusCode(Int), message(String) опционально, errorMessage(String) опционально)
        2.1. Если statusCode != 200 --> print errorMessage
        2.1. Если statusCode == 200 --> print message
        2.2. Создать tuple без statusCode и прогнать через 2.1/2.2
    3. Создать tuple студента с тремя параметрами (имя, номер машины, оценка за предыдущую контрольную)
        3.1. В нем не должно быть никаких данных (пять таких тюплов)
        3.2. Заполнить сначала имена этих контрольных
        3.3. Потом заполнить номер машины, если она есть
        3.4. Потом заполнить резалт контрольной (0-5, если не писал = nil)
        3.5. Красиво вывели в print данные тюплы
 */

/*
 п.1 :
 */
let valuesTuple: (firstValue: String, secondValue: Int?, thirdValue: String, fourthValue: Double?, fifthValue: String) = ("1233", nil, "just a string", 9123.231, "96167fc9-2647-42e3-ac00-54e1f8980da2")

var sumStrings: Int     = 0
let elseMessage: String = "is not a number"

// If firstValue ?? Int --> add to sumStrings
if Int(valuesTuple.firstValue) != nil {
    sumStrings = sumStrings + Int(valuesTuple.firstValue)!
    print(sumStrings)
} else {
    print(valuesTuple.firstValue, elseMessage)
}

// If secondValue ?? Int --> add to sumStrings
if let starSecond = valuesTuple.secondValue {
    sumStrings = sumStrings + starSecond
} else {
    print(valuesTuple.secondValue ?? "empty", elseMessage)
}

// If thirdValue ?? Int --> add to sumStrings
if Int(valuesTuple.thirdValue) != nil {
    sumStrings = sumStrings + Int(valuesTuple.thirdValue)!
} else {
    print(valuesTuple.thirdValue, elseMessage)
}

// If fourthValue ?? Int --> add to sumStrings
if let starFouth = valuesTuple.fourthValue{
    sumStrings = sumStrings + Int(starFouth)
} else {
    print(valuesTuple.fourthValue ?? "empty", elseMessage)
}

// If fifthValue ?? Int --> add to sumStrings
if Int(valuesTuple.fifthValue) != nil {
    sumStrings = sumStrings + Int(valuesTuple.fifthValue)!
} else {
    print(valuesTuple.fifthValue, elseMessage)
}

print("Summary: \(sumStrings)")

/*
 п.2 :
 */
let defaultErrorMessage: String     = "Default error message"
let defaultSuccessMessage: String   = "Default success message"

var response: (statusCode: Int, message: String?, errorMessage: String?)

response.statusCode = 404; response.message = nil; response.errorMessage = "Page not found :("

if  (response.statusCode < 200) || (response.statusCode > 399) {
    print("Oops, status code: \(response.statusCode), failed with error message:  \(response.errorMessage ?? defaultErrorMessage)")
} else {
    print(response.message ?? defaultSuccessMessage)
}

/*
 п.3 :
 */
var withoutCarText: String      = "No car"
var withoutExamMarkText: String = "Didn't show up for the exam"

var firstStudentInfo: (name: String?, carRegNumber: String?, grade: String?) = (nil, nil, nil)
var secondStudentInfo: (name: String?, carRegNumber: String?, grade: String?) = (nil, nil, nil)

/*
 И тут начался экзамен,
 У первого студента нет машины, но он сдал экзамен на отлично
 У второго студента есть машина, но он не явился на экзамен
 */

firstStudentInfo.name           = "Peter"
firstStudentInfo.grade          = "5"

secondStudentInfo.name          = "Ivan"
secondStudentInfo.carRegNumber  = "АА891А196"

print("\nInfo about first student:\n" +
      "\tname: \(secondStudentInfo.name ?? "Name is empty")\n" +
      "\tcar reg number: \(secondStudentInfo.carRegNumber ?? withoutCarText)\n" +
      "\texam mark: \(secondStudentInfo.grade ?? withoutExamMarkText)")

print("\nInfo about second student:\n" +
      "\tname: \(secondStudentInfo.name ?? "Name is empty")\n" +
      "\tcar reg number: \(secondStudentInfo.carRegNumber ?? withoutCarText)\n" +
      "\texam mark: \(secondStudentInfo.grade ?? withoutExamMarkText)")
