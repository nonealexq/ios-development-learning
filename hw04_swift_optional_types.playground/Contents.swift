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
/*
 Тюпл максимум в 3 переменных, в идеале в 2, все что больше - дурной тон) Яблоки дают создать до 7, но это уже извращение)
 Плюс в задании 5 констант, у тебя по факту 1 - valuesTuple, плюс константы должны быть String, у тебя есть и double и nil,
 плюс нужен опциональный биндинг(фига се назвали) - опциональная цепочка, ее нет)
 ну и задание получить всю сумму, тут лучше вынести в функцию с сигнатурой
 func test(constants: String...) -> Int {
    где constants именно такого типа, забыл как называется
    P.S. если до изучения этого не дошел, можно без функции
 }
*/

let firstValue: String      = "1233"
let secondValue: String?    = nil
let thirdValue: String      = "just a string"
let fourthValue: String?    = "9123"
let fifthValue: String      = "96167fc9-2647-42e3-ac00-54e1f8980da2"

var sumStrings: Int         = 0
let elseMessage: String     = "is not a number"

// If firstValue ?? Int --> add to sumStrings
if let intValue = Int(firstValue) {
    sumStrings = sumStrings + intValue
} else {
    print(firstValue, elseMessage)
}

// If secondValue ?? Int --> add to sumStrings
if let intValue = secondValue {
    sumStrings = sumStrings + Int(intValue)!
} else {
    print(secondValue ?? "empty", elseMessage)
}

// If thirdValue ?? Int --> add to sumStrings
if let intValue = Int(thirdValue) {
    sumStrings = sumStrings + intValue
} else {
    print(thirdValue, elseMessage)
}

// If fourthValue ?? Int --> add to sumStrings
if let intValue = Int(fourthValue!) {
    sumStrings = sumStrings + intValue
} else {
    print(fourthValue ?? "empty", elseMessage)
}

// If fifthValue ?? Int --> add to sumStrings
if let intValue = Int(fifthValue) {
    sumStrings = sumStrings + intValue
} else {
    print(fifthValue, elseMessage)
}

print("Summary: \(sumStrings)")

/*
 п.2 :
 */
let defaultErrorMessage: String     = "Default error message"
let defaultSuccessMessage: String   = "Default success message"

var response: (statusCode: Int, message: String?, errorMessage: String?)

// Дурной тон ставить ;, лучше с новой строки
response.statusCode     = 404;
response.message        = nil;
response.errorMessage   = "Page not found :("

// По условию проверка на 200, можно конечно и так, но лучше явно как в задаче)
if  (response.statusCode < 200) || (response.statusCode > 399) {
    print("Oops, status code: \(response.statusCode), failed with error message:  \(response.errorMessage ?? defaultErrorMessage)")
} else {
    print(response.message ?? defaultSuccessMessage)
}

/*
 п.3 :
 */

// Свойства не меняются, поэтому лучше let
let withoutCarText: String      = "No car"
let withoutExamMarkText: String = "Didn't show up for the exam"

/*
 Чтобы два раза не дублировать
 typealias Student = (name: String?, carRegNumber: String?, grade: String?)
 var firstStudentInfo: Student = (nil, nil, nil)
 
 P.S. Если изучал enum, то для grade он лучше подойдет, в стрингу можно запихнуть все что угодно, а вот enum
 с ограниченными регистрами не даст этого сделать
*/

typealias Student = (name: String?, carRegNumber: String?, grade: String?)
var firstStudentInfo: Student = (nil, nil, nil)
var secondStudentInfo: Student = (nil, nil, nil)

/*
 И тут начался экзамен,
 У первого студента нет машины, но он сдал экзамен на отлично
 У второго студента есть машина, но он не явился на экзамен
 */

firstStudentInfo.name           = "Peter"
firstStudentInfo.grade          = "5"

secondStudentInfo.name          = "Ivan"
secondStudentInfo.carRegNumber  = "АА891А196"

// Можно круче https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0,
// но на практике не приходилось использовать, поэтому можно не юзать, а можно попробовать и знать что так можно сделать)
print("\nInfo about first student:\n" +
      "\tname: \(firstStudentInfo.name ?? "Name is empty")\n" +
      "\tcar reg number: \(firstStudentInfo.carRegNumber ?? withoutCarText)\n" +
      "\texam mark: \(firstStudentInfo.grade ?? withoutExamMarkText)")

print("\nInfo about second student:\n" +
      "\tname: \(secondStudentInfo.name ?? "Name is empty")\n" +
      "\tcar reg number: \(secondStudentInfo.carRegNumber ?? withoutCarText)\n" +
      "\texam mark: \(secondStudentInfo.grade ?? withoutExamMarkText)")
