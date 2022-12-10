# 입출력 inout 파라미터

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

- 아래의 예시에서 swap을 통해 input 두개를 서로 값을 바꾸려고 하는 과정을 구현하는 것을 배우는 것

### 1) input 파라미터

- 파라미터는 원본 값을 복사해서 새로 선언하고 가져와서 씀! 이때 let으로 변경 불가능한 변수로 전달
- 이건 다른 언어 (파이썬/자바스크립트)랑 다르게, 파라미터를 immutable하게 받는다
  - 종종 immutable 한 파라미터로도 받아지긴 하는데(파이썬의 경우- string 등)
  - swift 무조건 immutable 인듯?
- 좀 이상하기는 한데, 따로 변수를 선언해서 let 변수로 변경해가면서 써야함

```swift
var num1 = 123     // 전역변수
var num2 = 456     // 전역변수


func swap(a: Int, b: Int) { // let a = 'A', let b = 'B' 의 형태로 선언한 것과 동일
    var c = a // 변수 buffer로 받아야 하므로 이렇게 구현해야 됨
    num1 = b
    num2 = a

//    a = b
//    b = c
}


swap(a: num1, b: num2)
```

### 2) 참조값 파라미터 전달; mutable 하게 사용하고자 할 때

- `엠퍼센트 사용해야 함!`
- `inout`키워드 사용해야 함!

```swift

num1 = 123
num2 = 456


func swapNumbers(a: inout Int, b: inout Int) {
    var temp = a
    a = b
    b = temp
}

// 함수 실행시에는 앰퍼샌드를 꼭 붙여야함
swapNumbers(a: &num1, b: &num2)

print(num1) //456
print(num2) //123
```

### 3) inout 파라미터로 전달 시 주의점

- 상수 let으로 전달하지 말 것(let인 변수 사용하지 마라~ 변경하려고 전달하는거니까..)
- 파라미터 기본값을 함수에 선언해주는 것 불가능
- 가변파라미터(여러개 파라미터 array로 받는 것 불가)
