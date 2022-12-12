# 배열 다루기

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 정렬

```swift
var nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]


nums.sort()      // 배열을 직접 정렬 (오름차순) (배열리턴 하지 않음) : Inplace
nums.sorted()    //오름차순으로 정렬 : 복사값 반환할듯?


nums.reverse()   // 요소를 역순으로 정렬  (배열리턴 하지 않음) : Inplace
nums.reversed()  // 역순으로 정렬 : 복사값 반환할듯?


--- 메서드 체인잉 ---
// 새로운 배열은 생성하지 않고, 배열의 메모리는 공유하면서 역순으로 열거할 수 있는 형식을 리턴
nums.sorted().reversed()
```

#### 특이 기능

```swift
nums.shuffle()    // 요소의 순서 랜덤으로 직접 바꾸기
nums.shuffled()
```

### 2) 배열의 비교

- python 리스트 비교와 동일하게 비교됨

```swift
let a = ["A", "B", "C"]
let b = ["a", "b", "c"]


// 두 배열을 비교해보기

a == b   // false
a != b   // true

// 개별요소 비교, 저장순서도 비교 하기 때문에

```

### 3) 활용 정리

#### remove 시 주의

- `스위프트는 뭐 꺼낼때 항상 옵셔널 생각해야됨`
- 그리고 위에서 꺼낼 때, 보통 `if let 바인딩` 쓰는 것으로 하면 좋다~

```swift
var puppy1 = ["p", "u", "p", "p", "y"]

if let lastIndexOfP = puppy1.lastIndex(of: "p") {
    puppy1.remove(at: lastIndexOfP)
}

if !nums.isEmpty {            // "!"(true ====> false)  (false ====> true)
    print("\(nums.count) element(s)")
} else {
    print("empty array")
}
```

#### 2d 배열

```swift
var data = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

data[0][2]
> 3

```

#### 반복문과의 결합

```swift
var nums = [10, 11, 12, 13, 14]
for i in nums {
    print(i)
}
```

#### enumerated 메서드

- python enumerate 함수와 동일 ㅎㅎ
- 맨 앞에 index가 같이 들어감!

```swift
var nums = [10, 11, 12, 13, 14]


// (offset: 0, element: 10)
for tuple in nums.enumerated() { // tuple로 받아지는 듯
    //print(tuple)
    print("\(tuple.0) - \(tuple.1)")
    print("\(tuple.offset) - \(tuple.element)") // named-tuple 기본 문법으로 가능
}

for (index, word) in nums.enumerated() {      // 바로 뽑아내기
    print("\(index) - \(word)")
}

for (index, value) in nums.enumerated().reversed() {      // 거꾸로 뒤에서 부터
    print("\(index) - \(value)")
}
```

- 특징
  - 다음과 같이 offset, element의 tuple 형태로 짝지어서 나옴

```swift
var nums = [10, 11, 12, 13, 14]
for tuple in nums.enumerated() { // tuple로 받아지는 듯
    print(tuple)
}

>
(offset: 0, element: 10)
(offset: 1, element: 11)
(offset: 2, element: 12)
(offset: 3, element: 13)
(offset: 4, element: 14)
```
