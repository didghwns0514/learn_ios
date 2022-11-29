# 삼항 연산자

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) For 문

```swift
for index in 1...5 { //let index = 1, let index = 2, let index = 3, let index = 4, let index = 5
    print(a)
}
```

> > > 1, 2, ..., 5

### 2) 와일드 카드 - 참고용

```swift
let _ = "임시"
```

- \_ 은 파이썬과 동잃하게 임시 변수 처럼 사용 가능

### 3) 범위 연산자 reverse

- 10 ... 1 와 같은 형식으로 쓸 수 없음!
- 따라서 밑에처럼 구현해야 됨, reversed 메서드 사용

```swift
(1...10).reversed()
let a = (1...10).reversed()

print(a)
```

### 4) 리스트, 튜플 등의 컬렉션에서도 사용 가능

```swift
let list = ["Swift", "Programming", "Language"]


for str in list { // 추론형
    print(str) // 하나씩 꺼내서 사용 가능
}

```

### 5) 문자열에서 사용 가능

```swift
for chr in "Hello" {
    print(chr)
    //print(chr, terminator: " ")     //다음줄로 넘어가지 말고, 한칸을 띄워라
    // python의 , end = 와 동일
}

```

### 6) 예시

- stride 자료형 for 문에서 사용 가능!

```swift

for number in (1...5).reversed() {
    print(number)
    // 5, 4, 3, 2, 1 ...
}

//홀수 또는 홀수만 뽑아내기

for number in stride(from: 1, to: 15, by:2) {     //마지막 숫자는 포함하지 않음
    print(number)
    // 1, 3, 5, 7, 9, 11, 13
}


//:> stride: 성큼성큼 걷다.


let range = stride(from: 1, to: 15, by: 2)     //  StrideTo<Int>
print(range)
// 1, 3, 5, 7, 9, 11, 13

for i in range {
    print(i)
}


let range1 = stride(from: 1, through: 15, by: 2)     // StrideThrough<Int>
print(range1)
// 1, 3, 5, 7, 9, 11, 13, 15
// 마지막 포함!!

for i in range1 {
    print(i)
}



let range2 = stride(from: 10, through: 2, by: -2)      //   StrideThrough<Int>
print(range2)
// 10, 8, 6, 4, 2


for i in range2 {
    print(i)
}


```
