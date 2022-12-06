# 함수의 오버로딩

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 함수 오버로딩

- 자바의 선언자 오버로딩 처럼 여러 type을 받을 수 있는 함수를 구현할 수 있음
- 같은 parameter 사용 가능
- 이게 지원이 안되는 언어의 경우, 파라미터 마다 다른 함수의 이름으로 구현해야됨 -> 불편함

`타입을 보고 구분하도록 되어있음!` => 컴파일러가 알아서 구분

```swift

func doSomething(value: Int) {
    print(value)
}


func doSomething(value: Double) {
    print(value)
}


func doSomething(value: String) {
    print(value)
}


func doSomething(_ value: String) {
    print(value)
}
```
