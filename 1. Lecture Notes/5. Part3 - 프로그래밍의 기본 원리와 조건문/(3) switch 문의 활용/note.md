# switch 문의 활용

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 1) if문과의 차이

- if는 참거짓으로 보통 판별 && switch는 값 비교용
  - 반드시 그런것은 아님
- switch는 가독성이 좀더 좋을 수 있음
- 앱 내에서 큰 로직의 줄기의 분기처리에서 사용

### 2) switch 문의 활용

#### 바인딩

```swift
var a = 3
let b = a     // 다른 변수의 값을 변수(식별자)의 초기화로 사용 == 바인딩
```

#### switch 에서의 바인딩

```swift
var num = 2

switch num {
case let k:      // let a = num 의 표현식과 동일한 의미
    print("숫자: \(k)") // string interpolation 보간법
default:
    break
}
```

- 바인딩을 이런식으로 하는 이유는 where 조건절 때문; `3) 참조하기`

### 3) switch 바인딩의 조건 추가

```swift
num: Int = 7

switch num {
case let x where x % 2 == 0: // let x = num; 이 먼저 실행되고, where 절이 실행됨 -> switch 에서 조건 확인하기 위해
    print("짝수 숫자: \(x)")
case let x where x % 2 != 0:
    print("홀수 숫자: \(x)")
default:
    break
}
```

- switch 는 swift 에서 값으로 case를 구분하므로, 다음과 같이 구현할 수 없음

```swift
num: Int = 7

switch num {
case num % 2 == 0 : // 표현식 그냥 false 가 되어버리고, Int인 num과 비교가 안됨
    print("짝수 숫자: \(x)")
case var x where x % 2 != 0:
    x = 11; // 변수로 선언하고 바인딩을 수행, let 으로 상수 지정 안해도 밑에서 값 변경하려면 이렇게도 사용 가능!
    print("홀수 숫자: \(x)")
default:
    break
}
```

- where 절은 보통 value 바인딩과 함께 사용; 어디선가 또 쓰이는듯, 잘 기억해두자!
