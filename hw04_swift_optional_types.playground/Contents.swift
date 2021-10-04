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
let stringTuple: (String, Int?, String, Double?, String) = ("1233", nil, "just a string", 9123.231, "96167fc9-2647-42e3-ac00-54e1f8980da2")
let (firstValue, secondValue, thirdValue, fourthValue, fifthValue) = stringTuple

var sumStrings: Int = 0
let elseMessage: String = "is not a number"

// If firstValue ?? Int --> add to sumStrings
if Int(firstValue) != nil {
    sumStrings = sumStrings + Int(firstValue)!
    print(sumStrings)
} else { print(firstValue, elseMessage) }

// If secondValue ?? Int --> add to sumStrings
if let starSecond = secondValue {
    sumStrings = sumStrings + starSecond
} else { print(secondValue ?? "empty", elseMessage) }

// If thirdValue ?? Int --> add to sumStrings
if Int(thirdValue) != nil {
    sumStrings = sumStrings + Int(thirdValue)!
} else { print(thirdValue, elseMessage) }

// If fourthValue ?? Int --> add to sumStrings
if let starFouth = fourthValue{
    sumStrings = sumStrings + Int(starFouth)
} else { print(fourthValue ?? "empty", elseMessage) }

// If fifthValue ?? Int --> add to sumStrings
if Int(fifthValue) != nil {
    sumStrings = sumStrings + Int(fifthValue)!
} else { print(fifthValue, elseMessage) }

print("Summary: \(sumStrings)")

/*
 п.2 :
 */
let defaultErrorMessage: String = "Default error message"

var http404: (Int, String?, String?) = (404, nil, "Page not found :(")
var (statusCode404, message404, errorMessage404) = http404

if statusCode404 != 200 {
    print("Oops, status code: \(statusCode404), failed with error message:  \(errorMessage404 ?? defaultErrorMessage)")
} else { print(message404!) }


var http200: (Int, String?, String?) = (200, "You got it!", nil)
var (statusCode200, message200, errorMessage200) = http200

if statusCode200 == 200 {
    print("Status code: \(statusCode200) with message: \(message200!)")
} else { print("Oops, status code: \(statusCode200), failed with error message:  \(errorMessage200 ?? defaultErrorMessage)") }


var httpConnectionError: (Int?, String?, String?) = (nil, nil, "Oops, connection error")
var (statusCodeConnectionError, messageConnectionError, errorMessageConnectionError) = httpConnectionError

if statusCodeConnectionError == nil {
    print("\(errorMessageConnectionError ?? defaultErrorMessage)")
} else { print("Connection error with default error message \(defaultErrorMessage)") }

/*
 п.3 :
 */

var withoutCarText: String  = "No car"
var withoutExamMarkText: String = "Didn't show up for the exam"

var firstStudentTaskInfo: (String, String?, String?) = ("Peter", nil, nil)
var (firstStudentName, firstStudentCarRegNumber, firstStudentExamMark) = firstStudentTaskInfo

var secondStudentTaskInfo: (String, String?, String?) = ("Ivan", nil, nil)
var (secondStudentName, secondStudentCarRegNumber, secondStudentExamMark) = secondStudentTaskInfo


/*
 И тут начался экзамен,
 У первого студента нет машины, но он сдал экзамен на отлично
 У второго студента есть машина, но он не явился на экзамен
 */

firstStudentExamMark       = "5"
secondStudentCarRegNumber  = "АА891А196"


print("\nInfo about first student:\n" +
        "\tname: \(firstStudentName)\n" +
        "\tcar reg number: \(firstStudentCarRegNumber ?? withoutCarText)\n" +
        "\texam mark: \(firstStudentExamMark ?? withoutExamMarkText)")

print("\nInfo about second student:\n" +
        "\tname: \(secondStudentName)\n" +
        "\tcar reg number: \(secondStudentCarRegNumber ?? withoutCarText)\n" +
        "\texam mark: \(secondStudentExamMark ?? withoutExamMarkText)")

