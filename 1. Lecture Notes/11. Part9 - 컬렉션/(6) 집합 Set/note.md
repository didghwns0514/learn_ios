# 집합 set

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

- [집합연산 참조 블로그 글](https://jellysong.tistory.com/92)

### 특징

- 직접적으로 앱을 만들면서 자주 사용하는 개념은 아님..
- 하지만, 기본 컬랙션의 타입으로 응용할 가능성 등이 있는 컬랙션!
- `Hash 알고리즘 사용`, 집합에 들어있는지 확인하는게 중요한 경우 사용하면 좋음

### 1) 선언

- 배열과 구분되지 않기 때문에, Set 타입은 반드시 명시
  - python도 set() 생성자 사용하는 것과 비슷
- 하위 item의 타입은 추론 가능한 경우 명시 안해줘도 되고, 보통 명시 해주는 게 좋을 듯

```swift
var set: Set = [1, 1, 2, 2, 3, 3, 3]
print(set)

// 단축문법
let set1: Set = [1, 2, 3]

// 정식문법
let set2: Set<Int> = [1, 2, 3]
```

### 2) 메서드

> a.<method>(b) 의 형태로 사용
>
> 1. union
> 2. intersection
> 3. subtracting
> 4. symmetricDifference

### 3) 빈 set의 생성

```swift
var emptySet1: Set<Int> = []
var emptySet2 = Set<Int>()
var emptySet3: Set<Int> = Set<Int>()
```

### 4) set 기본 attribute / method

- subscript 관련 문법 없음, key 값에 대응하는 value나 Index 없기 때문!

```swift
set.count
set.isEmpty

set.contains(1) // 값 존재 확인
set.randomElement()
```

### 5) set update

- 사실 생각해보면 Key 값만 있어서 update 만 가능
- 없으면 nil 반환 // `optional로 꺼내서 써야됨!`

```swift
set.update(with: 1)     // Int?
set.update(with: 7)     // 새로운 요소가 추가되면 ====> 리턴 nil
```

### 6) set remove

- 삭제된 요소 리턴됨
- 없는 요소 삭제시 Nil 리턴, 에러 발생하지 않음
- keepingCapacity를 통해, removeAll에도 힙 메모리 유지 가능

```swift
var stringSet: Set<String> = ["Apple", "Banana", "City", "Swift"]


// 요소 삭제해 보기
stringSet.remove("Swift")     // "Swift" 삭제한 요소를 리턴
stringSet                     // ["Hello", "Apple"]

// 존재하지 않는 요소를 삭제해보기
stringSet.remove("Steve")       // nil    (에러는 발생하지 않음)

// 전체요소 삭제
stringSet.removeAll()
stringSet.removeAll(keepingCapacity: true)
```

### 7) set 추가 기능

#### 비교

```swift
var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
var d: Set = [1, 7, 5, 9, 3]

a == b // false
a != b // true

//Set(정렬되지 않은 컬렉션)은 어짜피 순서는 중요하지 않음
b == d  // 항상 true
```

#### 부분 집합 및 서로소 여부

```swift
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]     // 홀수 모음
c = [2, 4, 6, 8, 10]    // 짝수 모음
d = [1, 7, 5, 9, 3]     // 홀수 모음


// 부분집합 여부를 판단
b.isSubset(of: a)   // true 부분집합 여부
b.isStrictSubset(of: a)   // false 진부분집합 여부

// 상위집합
a.isSuperset(of: b)    // true 상위집합 여부
a.isStrictSuperset(of: b)   // false  진상위집합 여부

// 서로소 여부
d.isDisjoint(with: c)
```

#### 일반적인 집합연산

- 복사본 생성하는 경우와, Inplace 메서드의 두 종류가 있는 것만 기억하면 될듯?

```swift
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
d = [1, 7, 5, 9, 3]

// 합집합
var unionSet =  b.union(c)  // 새 복사본 생성
//b.formUnion(c)      // 원본변경


//교집합
var interSet = a.intersection(b)
//a.formIntersection(b)      // 원본변경

//차집합
var subSet = a.subtracting(b)
//a.subtract(b)       // 원본변경

// 대칭차집합
var symmetricSet = a.symmetricDifference(b)
//a.formSymmetricDifference(b)       // 원본변경
```

#### 반복문 사용

```swift
let iteratingSet: Set = [1, 2, 3]

for num in iteratingSet {    // 정렬되지 않은 컬렉션이기 때문에, 실행할때마다 순서가 달라짐
    print(num)
}
```

#### 기타

- 새 array 생성하는 방식
  - set 정렬 시, array가 나옴

```swift
var newSet: Set = [1, 2, 3, 4, 5]
var newArray: Array = newSet.sorted()
```
