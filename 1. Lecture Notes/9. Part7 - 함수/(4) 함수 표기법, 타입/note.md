# 함수 표기법, 타입

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 정의문

```swift
func doSomething() {
    print("출력")
}

// 실제로 이 방식으로 코드 많이 작성함
func addPrintFunction(_ firstNum: Int, _ secondNum: Int) {
    print(firstNum + secondNum)
}

addPrintFunction(1, 2) // 이렇게 사용


```

### 2) 함수의 1급 시민

```swift
func doSomething() {
    print("출력")
}

doSomething //  함수의 변수 취급

var something = doSomething // 변수가 함수를 가르키게 됨
something() // 이게 가능해짐
```

### 3) 아규먼트 생략된 함수 호출문

```swift
// 정의 부분
func numberPrint(n num: Int) {

    if num >= 5 {
        print("숫자가 5이상입니다.")
        return
    }

    print("숫자가 5미만입니다.")
}

// 아규먼트 레이블이 있는 경우 아규먼트 레이블까지를 함수의 이름으로 봄

numberPrint(n:)  // 함수 지칭

```

```swift
// 파라미터가 여러개인 경우, 콤마없이 아규먼트이름과 콜론을 표기
var csf = chooseStepFunction(backward:value:) // chooseStepFunction(backward: Bool, value: Int)

csf(true, 1) // 이런식으로 사용이 가능해짐!

```

```swift
// 아규먼트 레이블이 생략된 경우, 아래와 같이 표기
addPrintFunction(_:_:)

```

### 3) 함수의 타입 표기

- 아래 경우가 확실하게 타입 모두 표기해준 것
- 위의 예제들에서 var에 함수 할당한 경우는 타입 추론 방식을 사용!
- 당연하지만, `타입에 input, output 의 두가지가 보이는 방식`이 함수의 타입

```swift
// 함수의 타입 표기 방법
// VOID 리턴을 가지는 함수들의 예시
var function1: (Int) -> () = numberPrint(n:)


var function2: (Int, Int) -> () = addPrintFunction(_:_:)

// 변수가 함수를 가르키도록 할 수 있음

function2(3, 5)

```
