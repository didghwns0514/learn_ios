# 열거형의 원시값과 연관값

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

- 원시값(Raw value)

### 1) 원시값 정의 방법

- enum 설정 시, 옆에 타입을 적어 넣는 것
- 기본값(정수/문자열)을 정해, 열거형을 좀 더 쉽게 활용 가능

```swift
// Int로 원시타입 입력하고, 원시값을 입력 안해 초기화가 되지 않으면
// 자동으로 0, 1, 2가 매칭됨
// 1(설정시), 2, 3
// 0, 2(설정시), 3
enum Alignment: Int {
    case left    //0
    case center  //1
    case right   //2
}

enum Alignment1: String {
    case left = "L"
    case center = "C"
    case right = "R"
}

```

### 2) 원시값 이용 방법

#### 생성자

- 없는 값을 생성해달라고 할 수도 있으므로 옵셔널로 생성

```swift
let align = Alignment(rawValue: 0)            // 인스턴스 생성시 - 옵셔널타입으로 리턴 (실패가능)
```

#### 접근 연산자 사용

```swift
let leftValue = Alignment.center.rawValue     // 접근연산자를 통해 원시값 자체에도 접근가능
> 1  : 자동생성된 값이 나옴

let leftValue2 = Alignment.center // 이건 원래 가능한 enum에서의 접근 방식
> center : 변수 자체(주소)가 나오는 듯
```

#### 특징

- 대부분 String, Int 타입을 사용

#### 예제

- 단순 예제 1

```swift
enum RpsGame: Int {
    case rock
    case paper
    case scissors
}

// 생성자를 통해서 생성하는 방법
// 실제 앱을 만들때는
RpsGame(rawValue: 0)! // 명확하게 존재하는 경우이므로, optional unwrapping
RpsGame(rawValue: 1)
RpsGame(rawValue: 2)
RpsGame(rawValue: 5) // Optional, nil을 받게 됨
```

- 단순 예제 2

```swift
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let planet = Planet(rawValue: 2)!
print(planet)
> venus
// Planet.mercury

let num = planet.rawValue
print(num)
> 2
```

- if let 바인딩

```swift
// 옵셔널값을 안전하게 벗겨서 사용
if let r = RpsGame(rawValue: 0) {
    print(r)                           // 출력은 하지만 문자열은 아님에 주의
}
```

### 3) 연관값(Associated Value)

- 추가적인 정보를 기입하기 위해 사용, 케이스를 추가하고 싶을 때 사용
  - 기입 / 저장 하기 위함
- 새로운 값에 enum을 생성할 때 사용
  - 생성할 때 정보 기입
  - `Enum 정의 내릴 때 하는 것이 아니다!`

```swift
enum Computer {
    case cpu(core: Int, ghz: Double) // named tuple 처럼 쓰는 것 가능
    case ram(Int, String) // 안써도 가능
    case hardDisk(gb: Int)
}

let myChip1 = Computer.cpu(core: 8, ghz: 3.5)
let myChip2 = Computer.cpu(core: 4, ghz: 2.0)

let myChip3 = Computer.ram(16, "DRAM")
let myChip4 = Computer.ram(4, "SRAM")
let myChip5 = Computer.ram(32, "DRAM")

let myChip6 = Computer.hardDisk(gb: 128)
let myChip7 = Computer.hardDisk(gb: 512)
```

### 4) 연관값과 원시값의 관계 / 차이

1. 자료형 선언 방식: 선언하는 위치가 다름
   - 원시값은 선언 시점에 값 할당 가능
   - 연관값은 생성 시점에 할당
2. 선언 형식:
   1. 원시값 ===> 2가지중 1가지 선택
      - 정수 혹은 문자열을 보통 사용
   2. 연관값 ===> 튜플의 형태로 형식 제한 없음
      - 내 마음대로 정의 가능, 사용하고자 하는 것을
3. 값의 저장 시점: (원시값: 선언시점 / 연관값: 새로운 열거형 값을 생성할때 )
4. 서로 배타적: 하나의 열거형에서 원시값과 연관값을 함께 사용하는 것은 불가능 함
   - 서로 배타적으로 한번에 한 기능만 사용해야 함!

#### 스위치문에서 활용

```swift
var chip = Computer.cpu(core: 8, ghz: 2.0)


switch chip {
case .cpu(core: 8, ghz: 3.1):
    print("CPU 8코어 3.1GHz입니다.")
case .cpu(core: 8, ghz: 2.6):
    print("CPU 8코어 2.6GHz입니다.")
case .ram(32, _):
    print("32기가램 입니다.")
default:
    print("그 이외의 칩에는 관심이 없습니다.")
}

// 값 받아서 써야할 때, 바인딩으로 쓸 수 있음
switch chip {
case .cpu(a, b):    // let a = 연관값, let b = 연관값
    print("CPU \(a)코어 \(b)GHz입니다.")
case let .ram(a, _):  // 하나 와일드카드로 없애도 됨
    print("램 \(a)기가램 입니다.")
case let .hardDisk(a) :
    print("하드디스크 \(a)기가 용량입니다.")
}

```
