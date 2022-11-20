# 타입 주석, 추론, 안정성, 변환

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 1) 타입 추론

```swift
var a = 3;
```

### 2) 타입 주석

```swift
var a: Int = 3;
```

### 3) 타입 안정성

```swift
var a: Float = 3.14;
var b: Int = (Int)b;
```

### 4) 타입 확인

```swift
var a: Float = 3.14;
type(of :a); // 타입 확인할 수 있음
```

### 기타

- 타입 변환 실패시 : nil (null) 리턴될 수 있음
- 컴파일하기 때문에, 데이터 타입이 중요한 언어!
- Float -> int와 같은 Downcasting 경우 당연하지만 유실되는 경우 있음 -> 자바와 유사
  - Int(3.14) == 3 -> true
