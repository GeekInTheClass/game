//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"

// Higher order function : 함수를 매개변수로 받는 함수.

// 요런거 5개를 만든다. 어렵게.
// 어떤 방식으로 다른 모둠에 넘긴다.
// map/filer 함수를 이용해서 다시 풀어낸다.

// 문제 제작 : 4:40
// 문제 돌리기 : 5:00 ~ 5:05
// 문제 풀이 : 5:05 ~ 5:35
// 문제 폭탄 제거 : 5:35 ~5:50
//
// 총점 : 받은 문제 + 폭탄 풀이 - 못 푼 문제


// 1번 문제
// 배열 내의 빈 칸의 개수를 출력해라.
let Map : [Character] = ["a", "a", "a" , " ",
                         "a", "a", "a", " ",
                         " ", "a", " ", " ",
                         " ", "a", "a", " "]
func HowManyEmpty() -> Int{
    var result = 0
    
    for i in 0...3{
        for j in 0...3{
            if Map[i*4+j] == " "{
                result += 1
            }
        }
    }
    
    return result
}

print(HowManyEmpty())

// 2번 문제
// 정렬한 후에 Float형으로 바꾸어서 answer 배열에 넣어라.
var array : [Int] = [10, 2, 1, 5, 3, 4, 5, 7]
var lastIdx = array.count-1
var curLastIdx : Int
var maxIdx : Int

for i in 0...lastIdx{
    curLastIdx = lastIdx - i
    for j in 0...curLastIdx{
        if array[j] > array[curLastIdx]{
            let temp = array[j]
            array[j] = array[curLastIdx]
            array[curLastIdx] = temp
        }
    }
}

var answer : [Float] = []

for i in 0...array.count-1{
    answer.append(Float(array[i]))
}

print(array)
print(answer)

//3번 문제

var problem : [String:Int] = ["a":1, "b":4, "c":2, "d":1]
var answer3 = problem.sorted{$0.value < $1.value}.map{String($0.value)} // 시간남으면 이걸 반복문으로 만들어보자. 시간없어서 반복문으로 문제 만들지 못했음.

//print(a)

//4번 문제
//3의 배수 값만 새로운 배열에 넣어라
let nArray = [1,2,3,4,5,6,7,8,9,10,11,12]
var num : [Int] = []
for i in nArray{
    if i % 3 == 0{
        num.append(i)
    }
}
print(num)


//5번 문제
var movieRating : [String:Double] = ["1987":9.5,"needFORSPEED":8.3,"pokemon":7.7,"HDD":9.1,"Titanic":9.9,"Avartar":9.7]
var movie : [Double] = []
for i in movieRating.values{
    if i > 9{
        movie.append(i)
    }
}
print(movie)



