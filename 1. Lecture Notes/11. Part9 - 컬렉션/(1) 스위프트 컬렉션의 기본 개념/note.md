# 스위프트 컬렉션의 기본 개념

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

#### 컬렉션이란?

- 데이터 바구나 같은 것
  - python 기준으로 tuple(array=파이썬 array 없음), list, dict 등이 컬랙션
- Swift 데이터 컬렉션 타입
  - array
  - dictionary
  - set

#### swift 컬렉션 설명

1. Array : 데이터 순서대로 저장하는 컬랙션; 자바의 array와 비슷할 듯?
   - 순서가 중요한 경우에 사용 -> 대부분의 array가 그렇듯! 그리고 인덱스 별로 탐색해야될 수도, list 자료형 있는지 모르겠다 swift
2. Dictionary : 키 : 데이터의 쌍으로 저장되는 순서가 없는 컬렉션
   - 서버와 주고받는 json 형태에서 사용
3. set : 집합과 비슷한 연산을 하는 순서가 없는 컬렉션
   - 실제로는 완전 자주 쓰이는 개념은 아님 실무에서 // 1, 2를 더 많이 쓴다!

### 1) Array 배열

- 데이터 순서대로 묶는 컬랙션
- 대괄호 사용

#### 배열 생성 방법

- 기본 배열 생성 문법

```swift
// 추론형
let numsArray1 = [20, 2, 7, 4, 5, 7]
var stringArray = ["Apple", "Swift", "iOS", "Hello"]


--- 빈배열은 타입추론으로 초기화 불가능하므로, 타입 꼭 명시를 해주어야 함 ---
// 정식문법
let strArray1: Array<Int> = []

// 단축문법
let strArray2: [String] = []

// 생성자 사용
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()
```

- 시험 생성

```swift
var testArray: Array<Int> = Array<Int>([1]);
print(testArray)
> [1]
```

#### 배열 기본 어트리뷰트, 메서드 ( 기능들 )

```swift
var numsArray = [1, 2, 3, 4, 5]   // 배열 리터럴로 배열을 생성해서 저장

// 아이템 개수
numsArray.count
// 비어있는지 확인 -> 불리언 리턴; true / false
numsArray.isEmpty

// 값 존재 여부 체크
numsArray.contains(1)  //파라미터로 값을 전달
numsArray.contains(8)

// 존재하지 않을 수도 있어서 Optional로 감싸진 값 받음, 없으면 nil일듯
numsArray.randomElement()

// inplace로 스왑, index 끼리 값을 바꿀 떄!
numsArray.swapAt(0, 1)
```

#### 배열 각 요소의 접근

```swift
numsArray = [1, 2, 3, 4, 5]   // 배열 리터럴
stringArray = ["Apple", "Swift", "iOS", "Hello"]


// [] 서브스크립트 문법(대괄호를 이용한 특별한 함수) -> index로 item 접근
stringArray[0]
stringArray[1]
stringArray[2]
stringArray[3]

stringArray[1] = "Steve"
print(stringArray)
```

- 어트리뷰트를 통한 접근

```swift
stringArray = ["Apple", "Swift", "iOS", "Hello"]

--- 없을 수도 있는 요소라, 옵셔널로 반환됨 ---
// 첫요소 반환
stringArray.first   // 리턴값 String? <옵셔널 스트링> ====> 빈 배열이라면 nil 리턴
// 마지막 요소 반환
stringArray.last


// 배열의 시작 인덱스
stringArray.startIndex

// 배열 크기가 나옴 -> 인덱스로 쓰려면 "endIndex - 1" 해줘야 함
stringArray.endIndex
//stringArray.endIndex.advanced(by: -1)


stringArray[stringArray.startIndex]
stringArray[stringArray.endIndex - 1]
```

- 메서드

```swift

// 바로 값을 인덱스로 배열에서 사용할 수 있으므로!
stringArray.firstIndex(of: "iOS")     // 앞에서 부터 찾았을때 "iOS"는 배열의 (앞에서부터) 몇번째
stringArray.lastIndex(of: "iOS")     // 뒤에서 부터 찾았을때 "iOS"는 배열의 (앞에서부터) 몇번째
stringArray[stringArray.firstIndex(of: "iOS")]  
> iOS
stringArray[stringArray.lastIndex(of: "iOS") ]  
> iOS


if let index = stringArray.firstIndex(of: "iOS") { // if let 바인딩
    print(index)
}

```
