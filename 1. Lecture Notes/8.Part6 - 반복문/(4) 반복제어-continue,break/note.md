# 반복제어 - continue, break

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) continue

- 다음 반복문의 step으로 이동한다는 의미

```swift

for num in 1...20 {
    if num % 2 == 0 {   // num 2의 배수
        continue
    }
    print(num)
}
```

### 2) break

- 반복문을 종료한다는 의미

```swift

for num in 1...20 {
    if num % 2 == 0 {
        break
    }
    print(num)
}
```

### 3) Labeled Statements

```swift
OUTER: for i in 0...3 {
    print("OUTER \(i)")
    INNER: for j in 0...3 {
        if i > 1 {
            print("  j :", j)
            continue OUTER
            //break OUTER
        }
        print("  INNER \(j)")
    }

}
```

- 다른 언어에서와는 다르게, label 값을 반복문에 붙여서 제어 가능
- 인접 혹은 그 어떤 지점에 있는 반복문도 제어 가능함
