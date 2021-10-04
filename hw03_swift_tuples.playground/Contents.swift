/*
 SWIFT - 03. Тюплы
 https://www.youtube.com/watch?v=5gWMKhTSf9c
 Задание:
    1. Создать tuple с тремя параметрами
        1.1. Максимальное кол-во отжиманий (с параметром)
        1.2. Максимальное кол-во подтягиваний (с параметром)
        1.3. Максимальное кол-во присяданий (с параметром)
    2. Распечатать данный tuple
    3. Распечатать каждый параметр с новой строки (индекс/параметры)
    4. Создать tuple для другого студента с другими значениями
    5. Посчитать разницу двух tuple
        5.1. Результат сохранить в другом tuple
 */


let firstStudentSportsInfo = (maxPushUps: 30, maxPullUps: 15, maxSqats: 10)
let secondStudentSportsInfo = (maxPushUps: 45, maxPullUps: 15, maxSqats: 11)

print("Print clear tuple of first student's sport info: \(firstStudentSportsInfo)")
print("Print clear tuple of second student's sport info: \(secondStudentSportsInfo)")

print("\nPrint via tuple's parameters...\nMax push-ups: \(firstStudentSportsInfo.maxPushUps)\nMax pull-ups: \(firstStudentSportsInfo.maxPullUps)\nMax sqats: \(firstStudentSportsInfo.maxSqats)")

print("\nPrint via tuple's indexes...\nMax push-ups: \(firstStudentSportsInfo.0)\nMax pull-ups: \(firstStudentSportsInfo.1)\nMax sqats: \(firstStudentSportsInfo.2)")

let differenceSportsInfoBetweenStudents = (maxPushUps: abs(firstStudentSportsInfo.maxPushUps - secondStudentSportsInfo.maxPushUps), maxPullUps: abs(firstStudentSportsInfo.maxPullUps - secondStudentSportsInfo.maxPullUps), maxSqats: abs(firstStudentSportsInfo.maxSqats - secondStudentSportsInfo.maxSqats))

print("\nDifference of max push-ups: \(differenceSportsInfoBetweenStudents.maxPushUps)\nDifference of max pull-ups: \(differenceSportsInfoBetweenStudents.maxPullUps)\nDifference of max sqats: \(differenceSportsInfoBetweenStudents.maxSqats)\n")

