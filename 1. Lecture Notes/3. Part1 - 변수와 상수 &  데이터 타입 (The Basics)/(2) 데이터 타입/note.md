# 데이터 타입

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 1) 데이터 타입1

```swift
var a1 = 3;

```

- 변수 선언과 동시에 초기화
- int 타입 추론으로 Int 형으로 들어가게 됨

<br>

```swift
var a2: Int = 4;

```

- syntax \<name\>: \<type\>; 으로 선언해주어야 함

### 2) 주 사용 데이터 타입

1. Int
2. Float : 소수 6자리, 4바이트
3. Double : 소수 15자리, 8바이트, 지수와 가수로 구분되는 복잡한 알고리즘으로 저장
4. Character : 글자 1개, 공백 1개 가능, 빈 문자 불가능
5. String : 1개 이상 여러 글자, 공백 1개 가능, 빈 문자 가능
6. Bool : true, false 저장
7. 기타 : UInt, UInt64, UInt32, UInt16, UInt8 -> 0 && 양의 정수 표현

- 특징
  - Float 보다는 Double 주로 사용
  - Swift 타입은 대문자로 시작
  - Character, String 나눠져 있는 것은 자바와 유사