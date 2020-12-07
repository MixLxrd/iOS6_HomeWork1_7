//HomeWork 3_2
//Task #1

/*
 Работа с кортежами

 Вы работаете над приложением "Информация о вас и ваших друзей". Ваша задача создать список людей с минимальной информацией о них и объединить одно из полей для создания общего значения.

 Алгоритм выполнения

 Создайте кортеж с тремя параметрами: ваш любимый фильм, ваше любимое число и ваше любимое блюдо. Все элементы кортежа должны быть именованы.
 Одним выражением запишите каждый элемент кортежа в три константы.
 Создайте второй кортеж, аналогичный первому по параметрам, но описывающий другого человека (с другими значениями).
 Обменяйте значения в кортежах между собой (с использованием дополнительного промежуточного кортежа).
 Создайте новый кортеж, элементами которого будут любимое число из первого кортежа, любимое число из второго кортежа и разница любимых чисел первого и второго кортежей.
 */

var favoriteThingsAlex = ("Deadpool", 19, "Pasta")
let (filmAlex, numberAlex, foodAlex) = favoriteThingsAlex

var favoriteThingsBob = ("Mask", 7, "Burgers")
let (filmBob, numberBob, foodbob) = favoriteThingsBob

var copyForFavoriteThingsAlex = favoriteThingsAlex
favoriteThingsAlex = favoriteThingsBob
favoriteThingsBob = copyForFavoriteThingsAlex

let newCortage = (numberAlex, numberBob, (numberAlex - numberBob))

//Task #2
/*
 Вы продолжаете разрабатывать информационное приложение. Сейчас вам необходимо создать больше людей в вашем приложении (например, 5). И удалить людей, чье любимое число больше 13.

 Алгоритм выполнения

 Создайте еще как минимум трех человек с информацией.
 Сложите все эти объекты в массив (пусть у двух любимое число будет больше 13, а у других трех меньше).
 Выберите подходящий для задачи цикл и оператор передачи управления в этом цикле.
 Удалите из массива неудовлетворяющие условию элементы.
 */

var favoriteThingsCarl = ("8 mile", 22, "Mom's spagetti")
var favoriteThingsCamaron = ("Harry Potter", 13, "Sushi")
var favoriteThingsJohn = ("Legend #17", 10, "Pizza")

var arrayPeople = [favoriteThingsAlex, favoriteThingsBob, favoriteThingsCarl, favoriteThingsCamaron, favoriteThingsJohn]

print(arrayPeople)

var newArrayPeople = [Any]()

for friend in arrayPeople {
    if friend.1 > 13 {
        newArrayPeople.append(friend)
    }
}

print("\n\(newArrayPeople)")

//не могу придумать по другому :С

//Task #3
/*
Вы разрабатываете приложение "Шахматы". Вашей задачей будет создать фигуру на игровом поле.

Алгоритм выполнения

Создайте псевдоним Chessman для типа словаря [String: (alpha:Character, num: Int)?]. Данный тип описывает шахматную фигуру на игровом поле.
В ключе словаря должно храниться имя фигуры, например «Белый король», а в значении — кортеж, указывающий на координаты фигуры на игровом поле. Если вместо кортежа находится nil, это означает, что фигура убита (не имеет координат на игровом поле).

Создайте переменный словарь Chessmans типа Chessman и добавьте в него три произвольные фигуры, одна из которых не должна иметь координат.

Создайте конструкцию if-else, которая проверяет, убита ли переданная ей фигура (элемент словаря Chessmans), и выводит на консоль информацию либо о координатах фигуры, либо о ее отсутствии на игровом поле.

Подсказка Для получения координат переданной фигуры используйте опциональное связывание.

    // chessmans[key] - опциональное значение
    if let info = chessmans[key] {
        // Действие
    }
*/

var chessman = [String: (alpha: Character, num: Int)?]()

var chessmans = [chessman]
chessmans.append(["Белый король": (alpha: "D", num: 1)])
chessmans.append(["Black King" : (alpha: "D", num: 8)])
chessmans.append(["Ферзь" : (nil)])
chessmans.removeFirst()

//var dict = Dictionary(chessmans[].keys, chessmans[].value)

//for (key, value) in chessmans {
    //
//}

//print(chessmans.enumerated())

print("\n\(chessmans)\n")

//chessmans[key] - не понимаю эту строчку. Просто максимальный затуп с подобным

//Task #4

var figure = ["Белый король", "Black King", "Ферзь"]
var point = [(alpha: "D", num: 1), (alpha: "D", num: 8), (nil) ]

var seq = zip(figure, point)

var dict = Dictionary(uniqueKeysWithValues: seq)

for (key, value) in dict {
    if value != nil {
        print("Figure - \(key) on playground and have coordinats on \(value ?? (alpha: "0", num: 0))")
    } else {
        print("Figure - \(key) doesnt exist on playground. I'm think, they kill him")
    }
}

//Выполнил не по ТЗ, поэтому прошу помощи в осознании. В лекции и презентации подобного нет, чтобы обрабатывать подобные примеры и не сразу понятно что с этим можно делать. Да и вообще как правильно работать со словарем. На банальных примерах - вопросов нет. Но из разряда шахмат, с ключами состоящими из переменной и значением это кортеж...

print()

typealias Chessman2 = [String: (alpha: Character, num: Int)?]
let chessmans2 : Chessman2 = ["Белый король": (alpha: "D", num: 1), "Black King" : (alpha: "D", num: 8), "Ферзь" : nil]

for (key, value) in chessmans2 {
    if let coordinates = value {
        print("\(key): \(coordinates))")
    } else {
        print("\(key) нет на игровом поле")
    }
}

//В первых вебинарах проходили, что нужно уметь искать информацию. Вот, информация найдена и результат получен.
