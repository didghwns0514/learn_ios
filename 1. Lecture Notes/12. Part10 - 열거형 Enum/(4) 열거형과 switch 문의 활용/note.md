# 열거형과 switch 문의 활용

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) 열거형은 거의 switch 문과 같이 사용

- 사용성이 높아지는 장점!
- 앱에서 사용할 수 있는 예시 다음과 같음

```swift
// 로그인 타입 enum으로 정의
enum LoginProvider: String {      // 3가지로 정의
    case email
    case facebook
    case google
}

let userLogin = LoginProvider.facebook

switch userLogin {                   // 3가지로 분기처리
case .email:
    print("이메일 로그인")
case .facebook:
    print("페이스북 로그인")
case .google:
    print("구글 로그인")
}

// if문
// 물론 특정한 경우도 처리 가능
if LoginProvider.email == userLogin {
    print("이메일 로그인")
}

```

### 2) 옵셔널 열거형

```swift
enum SomeEnum {
    case left
    case right
}

// 타입을 다시 옵셔널 열거형으로 선언 ⭐️
let x: SomeEnum? = .left
```

#### 이렇게 열거형 enum에 옵셔널 붙이는 이유?

- 옵셔널도 열거형인데, 이 구조는 enum 안에 enum 넣는 구조
- `장점은 이후에 적어야 할 듯???`

#### 예시

```swift
enum SomeEnum {
    case left
    case right
}

let x: SomeEnum? = .left

switch x {
  // 여기서 value는 실제 SomeEnum임, optional의 Enum에서 some에서 실제 값 받도록 되어있으므로
  // case let .some(value) 도 사용 가능
  case .some(let value):      // Optional.some(let value) = Optional.some(SomeEnum.left)  ⭐️
      switch value { // SomeEnum 타입
      case .left:
          print("왼쪽으로 돌기")
      case .right:
          print("오른쪽으로 돌기")
      }
  case .none: // nil과 동일
      print("계속 전진")
}
```

#### 편의 기능 제공

> 하단 편의 기능들은 모두 연관값이 없는, 원시값 형태여야 사용할 수 있다!

- 두개를 동시에 unwrapping 할 수 있도록 함 -> 중첩된 Enum의 경우

```swift
switch x {
  case .some(.left):
      print("왼쪽으로 돌기")
  case .some(.right):
      print("오른쪽으로 돌기")
  case .none:
      print("계속 전진")
}
```

- full name으로 쓰면 다음과 같다

```swift
switch x {
  case Optional.some(SomeEnum.left):
    print("왼쪽으로 돌기")
  case Optional.some(SomeEnum.right):
    print("오른쪽으로 돌기")
  case Optional.none:
    print("계속 전진")
}
```

- 가장 단순하게는 namespace 찾아서 매칭할 수 있게 다음의 기능도 있음
- 스위치문은 옵셔널 열거형 타입의 사용시, 편의성을 제공; `주의, 옵셔널 열거형일 때 이렇게 쓸 수 있는 것`
  - 두 번 unwrapping 안해도 된다는 뜻!

```swift
switch x {     // 예전에는 x! 라고 써줘야 했음 (스위치문에서 옵셔널 타입도 ok)
  case .left:
      print("왼쪽으로 돌기")
  case .right:
      print("오른쪽으로 돌기")
  case nil:
      print("계속 전진")
}
```
