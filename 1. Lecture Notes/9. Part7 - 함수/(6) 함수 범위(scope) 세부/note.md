\*# 함수 범위(scope) 세부

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 함수 일반 scope 특징

- 변수는 가장 최근 scope 에 선언된 것으로 참조됨
- 괄호(중괄호) 밖에 있는 변수는 안에서 사용 가능, 그 반대는 불가
  - 상위 스코프에 있는 것은 접근 가능, 하위 스코프에 있는 것은 접근 불가능(코드의 선언 scope 기준으로)
- 변수는 먼저 선언되어야 사용 가능!

```swift
func greeting1() {
    print("Hello")

    var myName = "홍길동"
    print(myName) // 여기서 메모리 공간에 변수 선언이 반대가 되면 안됨!

    print(name)

    if true {
        print(myName)
        print(name)
    }
}

```

### 2) 예제 2

```swift
func sayGreeting1() {
    print("Hello")


    func sayGreeting2() {
        print("Hey")

        if true {
            print("")
        }
    }

    sayGreeting2()

}


sayGreeting1()  // 이것은 가능
sayGreeting2() // 이것은 불가능
```

- cntrl + A -> cntrl + I 로 Xcode에서 인덴테이션 한번에 설정 가능
