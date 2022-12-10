\*# 제어 전송문 정리

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

- 코드의 흐름을 제어한다고 생각하면 됨

### 1) break

- case 문에서 어떤 일도 수행하지 않을 때 사용(기본으로)
  - 빈칸으로 놔두는 것은 허용 안함, 차라리 케이스 자체를 입력을 안해야 함
  - 마지막에 default 문으로 예외 케이스 한번에 처리
- 추가로, for / while / repeat-while 에 반복문에서 처리할 때 사용 가능

```swift
var a = 3

switch a {
case 1:
    break      // 실행하는 문장이 없을때, 반드시 입력 (약속)
case 2:
    print(a)
case 3:
    print("3입니다.")
case 4:
    print("안녕하세요")
default:
    break
}
```

```swift
for index in 1...10 {

    if index == 3 {
        break
    }

    print(index)
}
```

### 2) Fallthrough

- switch 문에서 다음 케이스로 넘어가기 위해 사용
- 드물게 사용하기는 함

```swift
switch a {
case 1:
    break      // 실행하는 문장이 없을때, 반드시 입력 (약속)
case 2:
    print(a)
case 3:
    print("3입니다.")
    fallthrough
case 4:
    print("안녕하세요")
default:
    break
}

>> 3입니다.
>> 안녕하세요
```

### 3) continue

- 반복문에서 다음 반복문으로 넘어가기 위해 사용하는 제어문

```swift
for index in 1...10 {

    if index % 2 != 0 {
        continue
    }

    print(index)
}

```

### 4) return

- 함수에서 값을 반환할 때 사용
- 리턴 타입을 명시해주어야 함(함수 선언부에서)
- 함수를 끝낼 때도 사용

```swift
func doSomething() {
    print("1")
    print("2")

    if true {
        return
    }

    print("3")
    print("4")
}


doSomething()
```

### 5) throw

- 에러 관련 handling 에서 정리할 것임
