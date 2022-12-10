# 조건문과 반복문의 명령어

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

- main 함수 하위 동작하는 함수들 사이에서 CPU가 주소값 찾아가는 걸 제어권 이전/반환 이라고 함

### 1) 전역 변수

- main 함수 동작하기도 전에 data 영역에 미리 올라가있는 변수
  - 초기화는 main 에서 하는건가..? 변수 선언은 이미 컴파일 시점에 코드 실행되면서 확보했을 듯?
- 즉 최상위 scope에 존재하기 때문에 main 함수 및 하위 함수 어디에서든 access 가능

### 2) 예제 1

- 데이터, 힙은 공유하므로 어떤 scope 에서건 아래의 total 변수 접근 가능하고 값 변경할 수 있음!
- 메모리구조1 마크다운에서도 확인했지만, 스택에서 return 있는 함수를 호출하면, 임시 값을 스택트레이스에 가져다 놓는다!

```swift
// 메모리 예제


var total: Int = 0    // 실제 전역변수라면 (데이터영역)


func square(_ i: Int) -> Int {     // x 제곱
    return i * i
}


func squareOfSum(_ x: Int, _ y: Int) -> Int {    // (x + y)(x + y)
    var z = square(x + y)
    return z
}


func startFunction() {
    var a = 4
    var b = 8
    total = squareOfSum(a, b)
}



startFunction()
```
