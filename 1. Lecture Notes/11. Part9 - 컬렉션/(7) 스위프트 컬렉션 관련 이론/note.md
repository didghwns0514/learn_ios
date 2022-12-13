# 집합 set

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) 분류

1. 컬랙션 직접 변경 : 동사원형 사용; mutable
2. 컬렉션 작업후 복사본 반환 : 분사형 사용; ed, ing 형태; immutable

### 2) 주사용 컬랙션

- array 주로 사용

  - 순서 중요

- set
  - 중복 찾는 집합인 경우

### 3) Foundation 컬랙션

- 지금까지 공부한 것은 swift 컬랙션
- ObjectiveC 코드에서 사용중인 컬랙션이 따로 있고, 이게 Foundation 컬랙션임

#### 종류

- 단어 앞에 NS 접두사 붙음
  - 그냥 접두어 붙인것 큰 의미 없음

1. NSArray, NSMutableArray
2. NSDictionary, NSMutableDictionary
3. NSSet, NSMutableSet

### 4) 추가 공부; keyValuePairs

- Dictionary와 동일하지만, 순서가 있는 컬랙션

```swift
let introduce: KeyValuePairs = ["first": "Hello", "second": "My Name", "third":"is"]

introduce.count
introduce.isEmpty
introduce[0] // 이거 가능, optional로 풀릴것

```

```swift
for value in introduce {
    print("\(value.key)는 \(value.value) 입니다.")
}
```

### 4) code on write 최적화

- 값을 복사하여도, 원본값이랑 차이가 나는 시점 전까지는 같은 메모리 공유
- call by reference 처럼 동작하는 듯
