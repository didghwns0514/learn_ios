# 열거형의 기본 개념

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) swift 타입형 전체 구분

1. Basic Type
   - 스위프트에 기본으로 내장되어있는 타입
   1. Int
   2. Double
   3. String
   4. Bool
2. Custom Type
   - 개발자가 마음대로 정의하여 사용할 수 있는 타입
   1. Enum
   2. Class
   3. Struct

### 2) 열거형(Enum)

#### 정의

> 타입 자체를 한정된 사례(case) 안에서 정의할 수 있는 타입
>
> - 요일; case 월, case 화, case 수, ....
> - 가위바위보; case 가위, ...

#### 선언

- 자체 정의 타입 사용
- 때문에, 대문자로 시작
- case가 유한하고, 셀 수 있는 것이 특징
- 하위 case는 소문자로 정의하는 것으로 약속

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

enum CompassPoint {
    case north, south, east, west  // 옆으로 나열하는 것도 가능!
}

```

### 2) 열거형 사용하는 이유

- 한정된 사례 안에서 custom된 정의가 필요할 때!
  - `내 마음대로 필요한 타입을 생성!`
  - `한정된 케이스 안에서 코드를 구현하기 때문에, 가독성 및 안정성이 높음!`
- 데이터 영역에 자주 사용할 것을 미리 올려두고, 두고두고 사용할 떄(?)
- 코드의 가독성이 높아지고, 명확한 분기처리 가능
  - 여기서의 분기처리; 명확하게 case 별로 나누었기 때문에 가능한 동작방식이 됨

### 3) 열거형 사용 예시

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var today: Weekday = Weekday.monday
today = .tuesday // today 선언때 이미 타입 지정해 주어서 알 수 있는 것임

if today == .sunday { }

```

```swift
// 모든 각각의 경우를 처리하고 싶을때
if today == .monday {
    print("오늘은 월요일입니다.")
} else if today == .tuesday {
    print("오늘은 화요일입니다.")
} else if today == .wednesday{
    print("오늘은 수요일입니다.")
} else if today == .thursday{
    print("오늘은 목요일입니다.")
} else if today == .friday{
    print("오늘은 금요일입니다.")
} else if today == .saturday{
    print("오늘은 토요일입니다.")
} else {
    print("오늘은 일요일입니다.")
}
```

- 열거형은 거의 대부분 switch 문 사용!

```swift
//:> 열거형은 항상 switch문으로 분기처리 가능
switch today {
case Weekday.monday:
    print("오늘은 월요일입니다.")
case Weekday.tuesday:
    print("오늘은 화요일입니다.")
case .wednesday:
    print("오늘은 수요일입니다.")
case .thursday:
    print("오늘은 목요일입니다.")
case .friday:
    print("오늘은 금요일입니다.")
case .saturday:
    print("오늘은 토요일입니다.")
case .sunday:
    print("오늘은 일요일입니다.")
case default:
    print("default 입니다.")
}
```
