# 조건문 switch 문

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 스위치문 특징

- 로직의 분기처리에 주로 사용; `가독성에 의한 장점이 존재!`
- if 문이 더 넓은 개념으로 사용될 수 있음

### 1) 스위치 문 작성법

```swift
var choice: String = "바위";

Switch choice {

  case "가위":
    print("가위");
  case "바위":
    print("바위");
  case "보":
    print("보");
  case "가위", "보":
    print("가위 && 보");
  default:
    print("기본케이스 입니다");
    break; // 기본에서 처리할게 없는 경우

}

```

- 특이하게 choice에 param을 받지않고, 사용 -> 다른 언어와 다름..?
- 동작문 이후에 break 없음, case 맞는 경우 실행하고 빠져나오는 듯?
- break는 동작 안할 경우에 사용
- , comma는 and 형식으로 사용할 때 넣어주면 됨

### 2) fallthorugh 키워드

```swift
var num: Int = 10;

Switch num {

  case ..<10:
    print("10미만!");
    fallthrough; // 다음 case 블럭 넘어감!
  case 10:
    print("10이다!");
    fallthrough;
  default:
    print("기본케이스 입니다");
    break; // 기본에서 처리할게 없는 경우

}

```

- 다른 언어에서는 fallthrough가 기본이라면(작성 안해도 다음 case 시도), swift에서는 fallthrough가 있을시 다음 case 넘어감

### 3) 스위치문의 범위 매칭

```swift
var num: Int = 30;

// 범위 연산자, 패턴매칭 연산자
0...50 ~= num; // 이 표현식은 결과가 true
51...100 ~= num; // 이 표현식은 결과가 false

Switch num {
  case ..<0:
    print("0 미만");
    fallthrough; // 다음 case 블럭 넘어감!
  case 0...50: // 0...50 ~= 30;으로 변환되는 표현식
    print("0 ~ 50 사이");
    fallthrough; // 다음 case 블럭 넘어감!
  case 51...100:
    print("51 ~ 100 사이");
    fallthrough;
  default:
    print("기본케이스 입니다");
    break; // 기본에서 처리할게 없는 경우

}

```

- param을 받아서 범위를 보는 방식이 아니기 때문에, 범위를 계산하려면 위에처럼 해야함
