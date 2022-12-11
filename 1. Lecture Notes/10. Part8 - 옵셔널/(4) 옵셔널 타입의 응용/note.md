# 옵셔널 바인딩 연습

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 옵셔널 체이닝

- 클래스 사용시 사용할 수 있는 구문
- 클래스의 인스턴스를 옵셔널로 생성했을 때, 체이닝을 통해 인스턴스의 하위 프로퍼티들 접근 가능

### 2) 옵셔널 기본값 전달

- nil로 옵셔널 파라미터 기본값 설정 많이 함

```swift

func doTest( num1: Int, str1: String? = nil){
    print("number : \(num1), string : \(str1)")
}

doTest(1, "june1")
doTest(1, nil) // nil 넣는 것도 가능
doTest(2)  // 이렇게 사용하면, 파라미터 굳이 전달 안해주어도 됨! + 아규먼트도 생략될 수 있음

```
