# 함수 사용시 주의점

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 함수 사용시 주의점

- 신가하게도, 파라미터로 받는 변수는 let 선언이어서 값 변경 불가능
- 받아서 써야 함

```swift
func someAdd(a: Int) -> Int {            // let a: Int   (값의 변경이 불가능)
    //a = a + 1
    var sum = 0
    sum += a
    return sum
}
```

### 2) 함수 내부 변수의 스코프

```swift
func sumOfNum(a: Int) -> Int {
    var sum = 0
    sum += a
    return sum
}
```

### 3) 리턴 타입이 있는 경우와 없는 경우
- 있는 경우
```swift
func addFunction(num1: Int, num2: Int) -> Int {
    var result = num1 + num2
    return result
}

addFunction(num1: 3, num2: 4) // 7 이 리턴 됨
```

- 없는 경우
```swift
func numberPrint(n num: Int) {
    
    if num >= 5 {
        print("숫자가 5이상입니다.")
        return // 함수 끝내기 -> 스택에서 빼져나옴
    }
    
    print("숫자가 5미만입니다.")
}

numberPrint(n: 7) // nil 이 리턴
```