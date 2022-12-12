# 배열 다루기

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 삽입 insertion

- python insert와 동일, pop 대신도 쓰는 것 같음

```swift
var alphabet = ["A", "B", "C", "D", "E", "F", "G"]

// 앞 또는 중간에 삽입하기
alphabet.insert("c", at: 4) // 특정 index 선택
> ["A", "B", "C", "D", "c", "E", "F", "G"]

//alphabet.insert("c", at: alphabet.endIndex)
alphabet.insert(contentsOf: ["a","b","c"], at: 0) // 한번에 array 묶음 추가
> ["a", "b", "c", "A", "B", "C", "D", "c", "E", "F", "G"]
```

### 2) 교체 replace

- subscript 방식
- 메서드 방식

```swift
alphabet = ["A", "B", "C", "D", "E", "F", "G"]


// 요소 교체하기
alphabet[0] = "a"


// 범위를 교체하기
alphabet[0...2] = ["x", "y", "z"]


// 원하는 범위 삭제
print(alphabet)
> ["x", "y", "z", "D", "E", "F", "G"]

alphabet[0...1] = [] // 빈 배열 전달 => 삭제
print(alphabet)
> ["z", "D", "E", "F", "G"]

// 교체하기 함수 문법
alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
```

### 3) 추가하기 append

- python list와 완벽 동일

```swift
alphabet = ["A", "B", "C", "D", "E", "F", "G"]

// subscript 방식
alphabet += ["H"]


// 추가하기 함수 문법
alphabet.append("H")   // 맨 마지막에 추가하는 것
alphabet.append(contentsOf: ["H", "I"])
```

### 4) 없애기 remove

- python의 list - pop 과 동일

```swift
alphabet = ["A", "B", "C", "D", "E", "F", "G"]


// 서브스크립트 문법으로 삭제
alphabet[0...2] = []   //빈배열 전달하면 해당 범위가 삭제

// 요소 한개 삭제
alphabet.remove(at: 2)  // 삭제하고, 삭제된 요소 리턴
//alphabet.remove(at: 8)    // 잘못된 인덱스 전달 ====> 에러발생


// 요소 범위 삭제
alphabet.removeSubrange(0...2)


--- 메서드 이용 ---
alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.removeFirst()   // 맨 앞에 요소 삭제하고 삭제된 요소 리턴 (리턴형 String)
alphabet.removeFirst(2)   // 앞의 두개의 요소 삭제 ===> 리턴은 안함


alphabet.removeLast()   // 맨 뒤에 요소 삭제하고 삭제된 요소 리턴 (리턴형 String)
alphabet.removeLast(2)
```

#### 모든 요소 삭제

- python 의 clear 메서드와 동일
- keepingCapacity : true 설정시 빈척을 해두고 컨테이너에서 사용하던 heap은 보존하는 듯?
  - 메모리 공간은 유지한다는 것! -> 다시 요소 추가할 때, 메모리 확보하는 시간이 줄어듦 -> 더 빨리 할당할 수 있다!

```swift
// 배열의 요소 모두 삭제(제거)
alphabet.removeAll()
alphabet.removeAll(keepingCapacity: true)  // 저장공간을 일단은 보관해 둠. (안의 데이터만 일단 날림)

```
