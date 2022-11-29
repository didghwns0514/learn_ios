# for문 사용시 주의점

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 중괄호의 범위 - scope

```swift
var name = "홍길동"

// 가장 가까운 Name이 변수로 출력, scope에 의해서
for name in 1...5 {
    print(name) // 홍길동이 아니고, 1, 2, 3, 4, 5 출력
}

for n in 1...5 {
    print(name) // 홍길동이 5번 출력
}

```
