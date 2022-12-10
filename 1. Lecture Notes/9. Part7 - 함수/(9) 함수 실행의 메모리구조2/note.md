# 조건문과 반복문의 명령어

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 조건문 if

```swift
var c = 0

func someConditionalStatement(a: Int) {
    if a >= 0 {
        c += 1
    } else {
        c += 7
    }
}

someConditionalStatement(a: -3)
```

- 조건문은 stack frame 추가 아님 -> 한 stack frame 안에 그냥 포함되는 형식
- stack frame의 내부의 한 명령어 line으로 컴파일 되어서 포함되는 것 뿐
- stack frame을 쌓는 것은 오로지 함수 혹은 블록일 뿐!

### 2) 반복문 for

```swift

var d = 0

func someLoop() {
    for i in 1...5 {
        d += i
    }
}


someLoop()

```

- loop의 다음 시작으로 돌아가는 명령어 집합으로 for문 수행
