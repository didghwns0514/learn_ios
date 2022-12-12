# 딕셔너리

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 정의

- 키와 값으로 이루어진 하나의 쌍을 순서 없이 저장하는 컬랙션
- 키는 유일해야 함; 값은 당연히 중복 가능
- 키 : 값 의 형식으로 사용
- 값에는 다른 타입이 들어갈 수 있음
- 타입 주의해야 함
  - 선언한 타입과 동일한 경우만 담을 수 있음
- 다른 언어와 동일하게 `Hash 알고리즘 사용`, O(1)으로 값에 접근 가능
  - 고정된 길이의 hash 값으로 값 access 함

#### 문법

```swift
// 단축문법 -> 추론 불가능 하므로, 타입 표기해주어야 함!
var words: [String: String] = [:]

// 정식문법
let words1: Dictionary<Int, String>
```

#### 선언

```swift
var testDict: Dictionary<String, String> = Dictionary<String, String>();
var testDict: Dictionary<String, String> = ["test1" : "Test1"]
var testDict: Dictionary<String, [String]> = ["test1" : ["Test11", "Test12"] ]
```

#### 사용 예시

```swift
var dic = ["A": "Apple", "B": "Banana", "C": "City"]   // 딕셔너리 리터럴로 생성해서 저장
let dic1 = [1: "Apple", 2: "Banana", 3: "City"]


// 내부적으로 순서가 존재하지 않음
print(dic)
print(dic1)
```

### 2) 빈 딕셔너리의 생성

- Array 선언과 매우 유사

```swift
let emptyDic1: Dictionary<Int, String> = [:]
let emptyDic2 = Dictionary<Int, String>()
let emptyDic3 = [Int: String]()
```

### 3) 기본 기능

```swift
var dic = ["A": "Apple", "B": "Banana", "C": "City"]

// 기본 기능
dic.count
dic.isEmpty
dic.randomElement() // Named Tuple 형태로 리턴, ("key" : "KEY", "value" : "VALUE") 의 형태

// 특정 값 있는지 확인
dic.contains(where: <#T##((key: String, value: String)) throws -> Bool#>)

```

- 값 꺼낼 때 사용가능한 방식
  - 매번 등장하지만, if let 바인딩

```swift
var dic = ["A": "Apple", "B": "Banana", "C": "City"]
if let tuple = dic.randomElement() {
    print(tuple)
    > (key : "A", value : "Apple")
}
```

### 4) 딕셔너리 각 요소에 접근 방법

- 동일하게 subscript 문법 사용
- key 값이 있는지 없는지 모르기 때문에, string이 value의 타입인 경우, 옵셔널 String으로 받음
  - 말인 즉슨, key 조회시 Nil이 리턴될 수도 있는 것

```swift
var dic = ["A": "Apple", "B": "Banana", "C": "City"]
print(dic["A"])  // 혹은 print( dic["A"]! )
> Optional("Apple")

print(dic["Q"] ?? "default Value")
> "default Value"
```

- 안전하게 하기 위해 `if let 바인딩` 사용

```swift
if let a = dic["A"] {    // 옵셔널 바인딩
    print(a)
} else {
    print("Not found")
}

```

- 딕셔너리 형태 자체에서 기본값 주고 조회하는 문법도 있음

```swift
// 참고 (잘 사용하지는 않음)
dic["S", default: "Empty"]
```

### 5) 딕셔너리 어트리뷰트 / 메서드

```swift
var dic = ["A": "Apple", "B": "Banana", "C": "City"]

print(dic.keys)
> ["A", "B", "C"]
print(dic.values)
> ["Apple", "Banana", "City"]

print(dic.keys.sorted())
> ["A", "B", "C"]
print(dic.values.sorted())
> ["Apple", "Banana", "City"]
```

### 6) 딕셔너리 순회

```swift
var dic = ["A": "Apple", "B": "Banana", "C": "City"]

for key in dic.keys.sorted(){
    print(key)
}

```

### 7) 딕서녀리 삽입 / 교체 / 추가

- 그냥 다 업데이트임 // 순서가 없기 때문!

```swift
// subscript 문법
words["A"] = "Apple"   // 애플로 다시 바꾸기
words["B"] = "Banana"  // 동일한 키가 없으면 ===> 추가하기
words["B"] = "Blue"    // 동일한 키가 있으면 ===> 기존 밸류 덮어쓰기

--- 정식 기능) 함수 문법 (update + insert = upsert) ---
// 메서드
words.updateValue("CCCC", forKey: "C")  // 처음 "C"가 추가되며, nil 리턴, 처음 추가된 것이라고 알려주기 위함
> nil
words.updateValue("City", forKey: "C")   // 원래 있던 키에 있는 value를 지우면서, 이전 value 값을 리턴
> CCCC
```

### 8) 딕셔너리 지우기

- remove 사용
- 없을 때 지우는건 에러 발생하지는 않는다

```swift
dic = ["A": "Apple", "B": "Banana", "C": "City"]


// 요소 삭제해 보기
dic["B"] = nil    // 해당요소 삭제
dic

dic["E"] = nil   // 존재하지 않는 키/값을 삭제 ======> 아무일이 일어나지 않음(에러아님)
dic

// 함수로 삭제해보기
dic.removeValue(forKey: "A")   // 삭제후, 삭제된 값 리턴
dic.removeValue(forKey: "A")   // 다시 삭제해보기 ===> nil리턴


// 전체 삭제하기
dic.removeAll()
// 지우는데, 메모리 힙 공간은 유지하는 방법
dic.removeAll(keepingCapacity: true)

```
