# 타입 Alias, 경고와 오류

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 1) 타입 Alias

```swift
typealias Name = String;
let name: Name = "June";

```

- 코드 작성 효율 및 가독성을 위해, 타입 전용 aka를 만드는 것

### 2) 치환 Alias

```swift
typealias Something: (Int) -> String;

func someHandler(compilerHandler: (Int) -> String);
func someHandler2(compilerHandler: Something);

```

- 복잡한 것도 치환으로 선언 가능(별칭으로)

### 3) 경고와 오류

- 노란 warning : 경고, 더 낳은 방법 제안
- 빨강 error : 컴파일 에러, 고쳐야 함
