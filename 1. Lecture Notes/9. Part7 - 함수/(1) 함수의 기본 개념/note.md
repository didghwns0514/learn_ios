# 함수의 기본 개념

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 함수 개념

- 우리 옛날에 배운 수학과 동일
- 공통부 + 1가지의 역할을 수행하는 것이 함수
- 어떤 기능을 수행하는 코드의 모음
- 정의부, 호출(실행)부로 구분됨

### 2) 함수 사용 이점

- 사용시 개발자는 내부 구조 몰라도 잘 이용할 수 있음; 일종의 Black box

### 3) syntax

- return 이 없는 경우 === void 타입
  - 아마 리턴 받으면 Nil 일듯

```swift
// 정의(선언부)
func saySomething(name: String) {
    print("안녕하세요 \(name) 님")
}
func sayhello2() -> Void {
    print("Hello, Swift!")
}
func sayhello3() -> () {
    print("Hello, Swift!")
}


// 함수 실행문(call)
saySomething(name: "스티브")

var name = "Jobs"
saySomething(name: name)
```

- return 이 있는 경우

```swift
// 정의(선언부)
func sayHelloString() -> String { // 리턴 형태 명시, 이 syntax는 파이썬 타입 주석과 비슷
    return "안녕하세요"
}

// 실행부
sayHelloString()
print(sayHelloString() + " 잡스 님")
```
