# 옵셔널 타입의 기본 개념

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 옵셔널 타입의 사용 이유

#### 기존 타입에 대한 세부 내용

- 변수선언 이후, 초기화를 하고 안하는 경우의 차이 // 데이터 혹은 스택 영역
  - 초기화 한 경우 : 코드 영역에 메모리 할당, 접근 가능
  - 초기화 하지 않은 경우 : 코드 영역에 메모리는 잡히나, 접근은 불가 -> 접근시 app crash!
    - 이것을 회피하기 위한 것으로 옵셔널을 사용!
    - 원래는 이렇게 짜면, 컴파일 자체가 안되는 것 아닌가 하는데 아마 함수 리턴 등에서 void받는 상황 같은 것 때문에 그런듯, `실제로는 런타임에서만 알 수 있는 에러이므로?`

#### 다음과 같은 상황이 문제가 됨

```swift
var yourName: String  // 선언 === 메모리 할당
//yourName = "홍길동"  // 값을 저장하지 않는다면.. === 초기화 하지 않음!

print(yourName)   // (만약 저장과정이 없다면) 메모리에 저장된 값이 없는데 접근 ===> 🔸"에러"

```

### 2) 옵셔널 타입에 대한 이해

> Int, String 등의 타입 뒤에 `?`를 붙인 타입이 옵셔널 타입!  
> 다른 언어에서는 없는(자바는 있는 것으로 암) 새로운 형태의 타입
> Int? 를 예로 들면, Enum으로 정수값 + nil이 wrapping 되어있는 형태인 것이 옵셔널임 -> 고로 정수값 혹은 nil이 들어있음
> 'nil은 값이 없음'을 의미하도록 한단계 싸여있는 상태라고 이해하면 됨

- 초기화가 되지 않아서 발생하는 에러 방지하기 위해, 옵셔널 타입을 할당
- 옵셔널을 사용하면, 초기화가 없으면 자동적으로 nil을 사용
- 사용시에는, ! 키워드를 사용해서 값을 추출(벗겨서)해서 사용해야 함!

```swift
var yourName: String?  // 옵셔널 형태로 선언 및 초기화
//yourName = "홍길동"   // 값을 저장하지 않는다면..

print(yourName)   // 옵셔널에 접근 ===> 🔸"nil"

```

### 3) 옵셔널 선언 방식

```swift
var yourName: String?
let num1: Int? = 2             // 간편표기
let num2: Optional<Int> = 0    // 정식문법
```

```swift
var num: Int? = 3
var yourAge: Int? = nil
var yourGrade: Double? = nil
var name1: String? = "Jobs"

// 다음이 가능해진다
num = nil
name1 = nil
```

> nil - 값이 없음을 나타내는 키워드 (실제 값이 없음이 아님) === 0이 이 자체로 숫자이지만, 아무것도 없는 것을 나타내는 것과 동일  
> 옵셔널에서는 `타입 무조건 명시` 해주어야됨, Nil로 할당하는 경우도 있으므로 추론형태로 선언이 불가능함!  
> 또한, 옵셔널에는 nil 말고 원본 타입도 들어갈 수 있으므로 반드시 `var`의 변수 형태로 선언해주어야 함

### 4) 옵셔널의 값 맛보기

- 초기화 한 경우

```swift
var num: Int? = 3

print(num)   // 에러가 나지 않음 (옵셔널은 값이 없다는 것을 나타내는 키워드)
> Optional(3)

```

- 초기화 안한 경우

```swift
var optionalName: String?
//optionalName = "홍길동"

print(optionalName)   // 에러가 나지 않음 (옵셔널은 값이 없다는 것을 나타내는 키워드)
> nil
```

### 5) 옵셔널 타입 할당 맛보기

```swift
var a: Int? = 7  // 옵셔널 인트
var b = a        // 값을 복사해서 담는 다면 타입은?
print(b)
> Optional(7)


var c: Int = 5
b = c     // Int를 Int?타입에 담을 수는 있다. (어쨌든 타입이 Int? 타입으로 바뀌어서 담김); Java Upcasting과 동일한 개념인듯
print(b)
> Optional(5)

```

### 6) 옵셔날 타입 주의사항

- 옵셔널 타입끼리는 계산 불가
