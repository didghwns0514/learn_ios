# 튜플 기본

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 분기 처리시 가독성이 좋음

- Tuple 비교 연산 특성 활용 분기 처리 좋음
- 한번에 비교할 수 있고, naming 튜플의 값을 비교해주어야 함( 튜플매칭 )

```swift
let iOS = (language: "Swift", version: "5")

// 이런 코드를 2번의 경우를 사용하면 좋다!
if iOS.0 == "Swift" && iOS.1 == "5" {
    print("스위프트 버전 5입니다.")
}

if iOS == ("Swift", "5") { // 한번에 비교!
    print("스위프트 버전 5입니다.")
}

```

```swift
switch iOS {
case ("Swift", "5"):
    print("스위프트 버전 5입니다.")
case ("Swift", "4"):
    print("스위프트 버전 4입니다.")
default:
    break
}
```

### 2) 바인딩 이용

- 둘다 바인딩 하고 where 절로 조건 확인할 수도 있음!

```swift
var coordinate = (0, 5)   // 좌표계

switch coordinate {
case (let distance, 0), (0, let distance):   // x축이나 y축에 있으면 출력하라는 코드
    print("X 또는 Y축 위에 위치하며, \(distance)만큼의 거리가 떨어져 있음")
default:
    print("축 위에 있지 않음")
}

```

