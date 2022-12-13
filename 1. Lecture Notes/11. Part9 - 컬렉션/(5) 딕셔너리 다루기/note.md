# 딕셔너리 다루기

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 딕셔너리의 비교

- 딕셔너리 비교시 순서 상관이 없음!

```swift
let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "Banana"]

// 비교 연산자
a == b   // true
a != b   // false
```

### 2) 딕셔너리 값의 형식

- 일반 타입
- arrary, dictionary 도 가능
  - 2d array 처럼!
  - python에서 그래프 생성하듯 비슷한 용도로 활용 가능할 듯!

```swift
var dict1 = [String: [String]]()        // 딕셔너리 밸류에 "배열"이 들어갈 수도 있다.
dict1["arr1"] = ["A", "B", "C"]
dict1["arr2"] = ["D", "E", "F"]


var dict2 = [String: [String: Int]]()     // 딕셔너리 안에 딕셔너리가 들어갈 수 있다.
dict2["dic1"] = ["name": 1, "age": 2]
dict2["dic2"] = ["name": 2, "age": 4]
```

### 3) 반복문과의 결합

- 튜플로 받아서 사용하는 경우가 일반적
- key value 의 named tuple로 받아짐

```swift
let dict = ["A": "Apple", "B": "Banana", "C": "City"]

// 딕셔너리는 열거하지 않아도, Named 튜플 형태로 하나식 꺼내서 전달
// 순서가 없으므로, 실행마다 순서가 달라짐 ⭐️
// 데이터 바구니이기 때문에,
// 차례대로 하나씩 꺼내서 사용하는 경우가 많을 수 있어서 아래처럼 활용 가능


for (key, value) in dict {
    print("\(key): \(value)")
}


for (key, _) in dict {
    print("Key :", key)
}


for (_, value) in dict {
    print("Value :", value)
}

```

```swift
let dict = ["A": "Apple", "B": "Banana", "C": "City"]
for item in dict {
  item.key
  item.value
}
```
