/*
 SWIFT - 05. Базовые операторы
 https://www.youtube.com/watch?v=HDpcHKvn3X4
 Задание:
    1. Посчитать через арифметические выражения кол-во секунд от начала года до дня рождения (01.01.2021 -- 10.09.2021)
    2. Посчитать в каком квартале мы родились
        2.1. Вывывести в консоль
    3. Заюзать все арифметические выражения в переменной (постфиксы/префиксы) унарные операторы
    4. Шахматная доска, в ней 64 клеточки
        4.1. от 1 до 8 и там от 1 до 8
        4.2. сказать какой цвет любой клетки
 */


/*
 п.1
 */
let dateDayBegin:Int    = 1
let dateMonthBegin:Int  = 1

let dateDayEnd:Int      = 26
let dateMonthEnd:Int    = 9

var currentDay:Int      = 0
var currentMonth:Int    = 0
var currentQartar: Int  = 0

var secondLeft:Int      = 0

/*
 Если не использовать либы и представить, что в каждом месяце всегда 30 дней:
 */

for currentMonth in dateMonthBegin...dateMonthEnd {
    if currentMonth == dateMonthEnd {
        for currentDay in currentDay...dateDayEnd {
            secondLeft += 86400
            //print(currentDay)
            if currentDay == dateDayEnd {
                print("Second left: \(secondLeft)")
            }
        }
    } else {
        secondLeft += 30 * 86400
    }
    
}


/*
 п.2
 */

let qartalCount = 4

typealias Qartar        = (begin: Int, end: Int, number: Int)
let qartar_1: Qartar    = (0, 3 * 30 * 86400, 1)
let qartar_2: Qartar    = (qartar_1.end, qartar_1.end + 3 * 30 * 86400, 2)
let qartar_3: Qartar    = (qartar_2.end, qartar_2.end + 3 * 30 * 86400, 3)
let qartar_4: Qartar    = (qartar_3.end, qartar_3.end + 3 * 30 * 86400, 4)

if (secondLeft >= qartar_1.begin) && (secondLeft <= qartar_1.end) {
    currentQartar = qartar_1.number
}

else if (secondLeft >= qartar_2.begin) && (secondLeft <= qartar_2.end) {
    currentQartar = qartar_2.number
}

else if (secondLeft >= qartar_3.begin) && (secondLeft <= qartar_3.end) {
    currentQartar = qartar_3.number
}

else if (secondLeft >= qartar_4.begin) && (secondLeft <= qartar_4.end) {
    currentQartar = qartar_4.number
}

else {
    print("Something is going wrong")
}

print("Date of birthday in \(currentQartar) qartar")


/*
 п.3
 */

var example: Int = (((2 + 1) * 14 / 2) % 2 + secondLeft) % 9
example += -100
example -= 1

/*
 п.3
 */

for i in 1...8 {
    for j in 1...8 {
        ((i + j) % 2 == 0) ? print("\(i) + \(j) is black") : print("\(i) + \(j) is white")
    }
}
