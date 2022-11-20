# 복합, 비교, 논리, 우선순위, 접근 연산자

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 1) 복합 연산자

```swift
var value: Int = 0;

value += 10;
value -= 10;
value *= 10;
value /= 10;
value %= 10;
....

```

- 연산 후 바로 대입 축약형
- 특징; ++ 후행 연산 없음

### 2) 비교 연산자

```swift

var a = 10;
var b = 20;

// 모두 expression의 형태(표현식!)
a == b
a != b
>=
<=
<
>
....

```

### 3) 논리 연산자

```swift

&&
||
....

```

- c, 자바, JS와 동일!

### 4) 접근 연산자 .

- . 은 class Enum 등의 property 접근
- 다른 많은 언어와 매우 유사~~
