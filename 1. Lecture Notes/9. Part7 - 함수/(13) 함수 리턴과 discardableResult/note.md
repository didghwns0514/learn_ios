# 함수 리턴과 discardableResult

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 함수의 리턴값 유무

- 리턴값 존재
  - 스택프레임 만들어지고, 임시값을 스택프레임 안에 할당
  - 함수 실행시 제어권 + 임시값을 만들고 나중에 함수가 스택에서 빠지면서 다음 스택으로 이 2개를 넘겨줌
- 리턴값 없음
  - 스택프레임 만들어짐, 임시값 없음
  - 함수 실행시 제어권만 가져오고, 나중에 함수가 스택에서 빠지면서 다음 스택으로 제어권만 넘겨줌

```swift
// 리턴값(타입)이 없는 함수

func sayHello() {
    print("안녕하세요.")
}

sayHello()
```

```swift
// 리턴값(타입)이 있는 함수

//@discardableResult
func sayHelloString() -> String {
    print("하이")
    return "안녕하세요"
}

sayHelloString()     // 실제 프로젝트에서 경고창 표시 -> 리턴값 사용하고 있지 않다고 경고창 표시해줌
_ = sayHelloString() // 이렇게 사용해서 경고창 없애기... -> 필요한건가? 안쓸건데? 리턴을? 흠..
```

- discardable 하게 사용해서, 와일드카드로 안받기 위해서 다음의 어트리뷰트를 사용함

```swift
// 리턴값(타입)이 있는 함수

@discardableResult
func sayHelloString() -> String {
    print("하이")
    return "안녕하세요"
}

sayHelloString()     // 이제 경고가 나오지 않는다!

```

### 2) 어트리뷰트 키워드!

- 컴파일러에게 추가적인 정보를 제공할 때 사용!
- 선언과 타입에 정보를 제공해줄 수 있음

1. 선언에 추가정보 제공
2. 타입에 추가정보 제공

```swift
@attribute1(iOS 11.0)
class testClass {


}

func testFunc (completion: @attribute2 ( ) -> () ) {

}
```

### 3) void 형 함수의 리턴
