# 옵셔널 타입에 대한 정확한 이해

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) 알고있던 옵셔널

- 임시 타입; (ex Int?)
  - 임시 값 : Optional(X)
  - 값이 빔 : nil
- 실제 쓰려면, Optional을 한번 unwrapping 해야 함

#### 옵셔널 실제 내부 구조

```swift
enum Optinoal<Wrapped>{
    case some(Wrapped)
    case none
}
```

#### 예시

- Int ?
- case : .some(연관값)
  - 실제 값이 들어있는 부분
- case : .none
  - 구체적인 값이 없음을 나타내는 부분

### 2) 옵셔널 열거형으로 이해하기

```swift
enum Optional {     // 제네릭 문법
    case some(Int)
    case none
}

var num: Int? = 7
var num: Optional = Optional.some(7) // 이렇게 한것과 위의 코드는 동일하다고 보면 됨

```

#### 스위치 문으로 값 꺼내보기 - 옵셔널 내부 동작 이해용

```swift
switch num {
case .some(let a):  // let a = 7     // 열거형 case 패턴을 활용해서, 내부 연관값을 꺼냄
    print(a)
case .none:
    print("nil")
    //print(num!)
}
```

혹 다음과 같이 꺼내서 쓸 수 있음!

```swift
switch num {
    case Optional.some(let a):
        print(a)
    case Optional.none:
        print("nil")
}
```

### 3) none과 nil은 동일!

- none은 enum 케이스 중에 하나임, 값이 없는 상태를 의미
- 애플이 정의한 Optional의 generic 에서는 nil로 돌려줌
