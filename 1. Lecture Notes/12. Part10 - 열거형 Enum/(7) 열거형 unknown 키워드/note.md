# 열거형 unknown 키워드

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

- 열거형 처리 케이스가 늘어나면, 적절한 대응을 하고 있는지 / 처리가 되는지 보장이 되나?
- 에서 출발한 것

### 1) 예시

```swift
// 만약에 로그인의 경우의 수가 늘어난다면 (Non-frozen 열거형 / 얼지않은)
enum LoginProvider: String {      // 3가지 케이스 ===> 4가지 케이스로 증가한다면?
    case email
    case facebook
    case google
    case kakaotalk
}

let userLogin = LoginProvider.email

// 열거형의 케이스가 늘어나는 경우에 대한 안정성 보장은 별개
switch userLogin {                // 처리하는 방식을 조금 변형
case .email:
    print("이메일 로그인")
case .facebook:
    print("페이스북 로그인")
//case .google:
//    print("구글 로그인")
default:                         // default블럭만 추가해두는 것이 안전할까? ⭐️
    print("구글 로그인")
}

```

### 2) unknown 추가
경고를 통해 알려줌 ===> 개발자의 실수 가능성을 컴파일 시점에 알려줌
```swift
switch userLogin {
case .email:
    print("이메일 로그인")
case .facebook:
    print("페이스북 로그인")
case .google:
    print("구글 로그인")
@unknown default:
    print("그 외의 모든 경우")
}
```