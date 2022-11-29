# for문 사용시 주의점

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) while 문

```swift
var sum = 0
var num = 1

while num <= 50 {   // 조건이 만족하는 동안 계속 반복
    sum += num
    num += 1      // 이런 조건이 필요 (위의 조건식을 변화시키지 않으면 무한 반복하게됨)
}


print("총 합의 출력: ", sum)

```

### 2) Repeat - while

- 무조건 조건 만족에 상관 없이 1회 실행을 보장
- while 문의 조건은 나중에 나옴!

```swift
var i = 1

repeat {
    print("\(3) * \(i) = \(3 * i)")
    i += 1
} while i <= 9
```
