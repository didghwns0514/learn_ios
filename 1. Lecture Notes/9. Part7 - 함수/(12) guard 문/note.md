# guard 문

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

[Guard 문 특징!]

1. else문을 먼저 배치 - 먼저 조건을 판별하여 조기 종료(early exit)
2. 조건을 만족하는 경우 코드가 다음 줄로 넘어가서 계속 실행
3. 가드문에서 선언된 변수를 아래문장에서 사용 가능 (동일한 스코프로 취급) (guard let 바인딩 관련)
   - 이부분은 나중에 다룰 예정!

### 1) 가드문 도입 이유

- if문 중첩 사용시 가독성 떨어지는 것을 방지하기 위함
- 여기서 if문은 중첩해서 사용하는 이유? -> 아마도 파라미터 조건등 먼저 선행으로 따지고 나서 밑에 로직 돌리려는 구문 말하는것같은데?

### 2) 가드문의 이해

- if문 예제

```swift
func checkNumbersOf1(password: String) -> Bool {

    if password.count >= 6 {

        // 로그인을 처리하는 코드 작성
        // 1
        return true

    } else {

        return false

    }

}
```

### 3) guard문 예제

- if문에서는 else에 해당하는 것이 먼저 올라옴, false 컨디션 먼저 작성해 탈출조건 먼저 확인할 수 있음
- `early exit 부문 먼저 수행!`
- 그냥 파이썬에서 if not으로 탈출조건 먼저 쓰는거랑 동일
- `반드시 return 구문이 포함되어야 함!`

```swift
func checkNumbersOf2(password: String) -> Bool {

    // 감시하다
     // 종료 조건 - 함수 내에서는 return / throw
    guard password.count >= 6 else { return false }

    // 로그인을 처리하는 코드 작성
    // 1

    return true
}

```
