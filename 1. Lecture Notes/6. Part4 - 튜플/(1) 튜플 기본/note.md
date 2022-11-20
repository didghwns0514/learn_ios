# 튜플 기본

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

- array 마냥 동적으로는 못할 듯? 선언과 동시에 식별자에 값 주어야 하는 것 같다.

### 1) 튜플 사용 이유

- 어떻게 여러 데이터를 저장할지에 대한 것 (타입이 다르지만 연관이 있는 경우 등에 한해 묶어서... 사용하려고?!)

### 2) 튜플 특징

- 연관 데이터 조합이며, 변수 생성하고 초기화 이후에 값의 갯수는 변경 불가 ( member 갯수; `var로 선언한 경우!` )
- hash / dict 처럼 사용 가능 -> 짬뽕....? 이네요?

### 3) 기본 tuple 예시

```swift

let twoNumbers: (Int, Int) = (1, 2)
type(of: twoNumbers) -> (Int, Int) 출력됨!


let threeNumbers = (1, 2, 5)
//type(of: threeNumbers)


var threeValues = ("홍길동", 20,  "서울") // 멤버(데이터의 종류 및 갯수)는 튜플을 만들때 결정되므로 "추가"/"삭제" 불가
threeValues = ("암행어사", 21, "부산");    // 이렇게 수행(변경) 은 가능함


```

### 4) 데이터 접근법

```swift

var threeValues = ("홍길동", 20,  "서울")

threeValues.0 // 홍길동
threeValues.1 // 20

```

### 5) named tuple 예시

```swift
let iOS = (language: "Swift", version: "5")

// 이것은 기본으로 가능 -> name 말고 value 가 출력됨
iOS.0  // Swift 출력
iOS.1  // 5

// 코드의 가독성이 높아짐

iOS.language
iOS.version

```

- dictionary와 비슷(python 의)

### 6) tuple 분해

```swift
var threeValues = ("홍길동", 20,  "서울")

let (first, second, third) = threeValues // 타입추론!; 바인딩
first // "홍길동"
second // 20
third // "서울"

```

- 다음과 같은 alias 에서도 Tuple 사용

```swift
typealias GrildType = (Int, Int);
```

### 7) tuple 값 비교

- 최대 7번 요소까지 비교 가능
- 앞 요소부터 비교하고 같은 경우 다음 멤버를 비교; `Python array 비교와 비슷`
