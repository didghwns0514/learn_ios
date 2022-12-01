# 함수의 응용

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 아규먼트 레이블 // input 자체에 lable 가능

- 아규먼트 레이블을 겉에서 보는 레이블
- 안의 값은 원본 아규먼트 이름을 써주어야 함

```swift
// 아규먼트에 레이블 정의
func printName1(first name: String) {
    print("나의 이름은 \(name) 입니다.") // 함수 내부에서는 name 아규먼트 유지
}

printName1(first: "뉴턴") // 파라미터 : 뉴턴, 위에 레이블 first 사용해도 됨
```

- 다음과 같이 자세한 설명이 덧붙여져서 함수 밖에서 call 하여 사용할 수 있으므로, readible한 코드가 됨
- `내부에서는 간단하게 사용 가능!`
  - 물론 아규먼트 레이블을 함수 안에서 사용하는 것도 가능!

```swift
func someFunction1(writeYourFirstNumber a:Int, writeYourSecondNumber b: Int) {
    print(a + b)
}

someFunction1(writeYourFirstNumber: 3, writeYourSecondNumber: 4)

```

### 2) 아규먼트 레이블 생략하는 경우!

- `이거 진짜 자주 보이는 유형`
- `가변 파라미터~!`

  - python의 *args, *kwargs와 비슷
  - 변수는 배열의 형태로 전달 됨
  - 가변 파라미터 사용하기 때문에, 파라미터 일일히 입력 안하기 위해서 \_ 와일드카드문자 사용

- 이거 사용하는 이유는, 함수의 동작이 너무나 명확하기 때문에 생략을 위해서
  - 아규먼트 및 아규먼트 레이블 둘다 필요 없을 때 사용

```swift
func arithmeticAverage(_ numbers: Double...) -> Double { // 가변 파라미터 사용 부분!

    var total = 0.0

    for n in numbers {
        total += n
    }

    return total / Double(numbers.count)
}

arithmeticAverage(1.5, 2.5, 3.5, 4.5) // 파라미터 입력 안해도 됨!
arithmeticAverage(5, 6, 7, 8, 9) // 이것도 가능
arithmeticAverage(numbers: 5, 6, 7, 8, 9) // 이것도 가능! - 원래 가능
```

### 3) 디폴드 값 선언된 함수

- 이것도 python과 비슷

```swift
func numFunction(num1: Int, num2: Int = 5) -> Int {
    var result = num1 + num2
    return result
}

numFunction(num1: 3)
numFunction(num1: 3, num2: 7)
```

- 애플 기본 sdk 예시

```text
print(<#T##items: Any...##Any#>, separator: <#T##String#>, terminator: <#T##String#>)
```

```swift
print("hi", "this", "is", separator:"_", terminator:" + ")
>>> hi_this_is +

```

separator, terminator 기본 값이 들어있음!
