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
 1. Посчитать через арифметические выражения кол-во секунд от начала года до дня рождения (01.01.2021 -- 10.09.2021)
 */
let dateDayBegin: Int       = 1
let dateMonthBegin: Int     = 1

let dateDayEnd: Int         = 26
let dateMonthEnd: Int       = 9

var currentDay: Int         = 0
var currentMonth: Int       = 0
var currentQartar: Int      = 0

var secondLeft: Int         = 0

let secondInDay             = 86400         // Сколько секунд в одном дне
let dayInMonth              = 30            // Сколько дней в месяце

/*
 Если не использовать либы и представить, что в каждом месяце всегда 30 дней:
 */

for currentMonth in dateMonthBegin...dateMonthEnd {
    if currentMonth == dateMonthEnd {
        for currentDay in currentDay...dateDayEnd {
            secondLeft += secondInDay
            //print(currentDay)
            if currentDay == dateDayEnd {
                print("Second left: \(secondLeft)")
            }
        }
    } else {
        secondLeft += dayInMonth * secondInDay
    }
}

/*
 2. Посчитать в каком квартале мы родились
     2.1. Вывывести в консоль
 */
let monthOfBirthday = 9
var quaterOfBirthday = Int((Double(monthOfBirthday - 1) / 3) + 1)
print("The student was born in \(quaterOfBirthday) qartar")

/*
 3. Заюзать все арифметические выражения в переменной (постфиксы/префиксы) унарные операторы
 */
var example: Int = (((2 + 1) * 14 / 2) % 2 + secondLeft) % 9
example += -100
example -= 1

/*
 4. Шахматная доска, в ней 64 клеточки
     4.1. от 1 до 8 и там от 1 до 8
     4.2. сказать какой цвет любой клетки
 
    _ --> white
    * --> black
^ y
|
8  |_|*|_|*|_|*|_|*|
7  |*|_|*|_|*|_|*|_|
6  |_|*|_|*|_|*|_|*|
5  |*|_|*|_|*|_|*|_|
4  |_|*|_|*|_|*|_|*|
3  |*|_|*|_|*|_|*|_|
2  |_|*|_|*|_|*|_|*|
1  |*|_|*|_|*|_|*|_|
|---1-2-3-4-5-6-7-8--------> x
 */
for x in 1...8 {
    for j in 1...8 {
        let color = ((x + j) % 2 == 0) ? "black" : "white"
        print("\(x) + \(j) is \(color)")
    }
}
