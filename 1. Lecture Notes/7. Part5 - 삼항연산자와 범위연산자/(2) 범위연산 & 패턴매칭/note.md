# 삼항 연산자

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

- `범위 연산자 사용하면 Type 이 따로 지정되어서 나옴 // 추정형으로 쓰면 될듯`

### 1) 범위 연산자 syntax

#### 이상, 이하

```swift

let range = 1 ... 10     //ClosedRange<Int>

let range1 = 1...      //PartialRangeFrom<Int>

let range2 =  ...10    //PartialRangeThrough<Int>

```

#### 초과, 미만

```swift

let rangeH = 1 ..< 10     //Range<Int>

let rangeH1 =  ..<10    //PartialRangeUpTo<Int>
```

### 2) switch 에서 범위 연산자 사용 -> 패턴매칭

```swift
var num = 23

switch num {
case 10...19:  // 10...19 ~= num   =>   10...19 ~= 23;으로 패틴매칭 연산자
    print("10대 입니다.")
case 20...29:
    print("20대 입니다.")
case 30...39:
    print("30대 입니다.")
default:
    print("그 외의 범위 입니다.")
}
```

- return 값이 True / False 로 나타난다
- case는 원래 값 비교인데, 패턴매칭만 예외인듯?
