# 열거형에 연관값이 있는 경우

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) 일반적인 열거형 switch문 분기 처리 방식

```swift

enum Computer {                         // 3가지로 정의
    case cpu(core: Int, ghz: Double)
    case ram(Int, String)
    case hardDisk(gb: Int)
}

var chip = Computer.cpu(core: 8, ghz: 3.1)


switch chip {                          // 수십가지로도 처리 가능 (필요한 처리 확장 가능)
case .cpu(core: 8, ghz: 3.1):
    print("CPU 8코어 3.1GHz입니다.")
case .cpu(core: 8, ghz: 2.6):
    print("CPU 8코어 2.6GHz입니다.")
case .cpu(core: 4, ghz: let ghz):       // let ghz = 연관값  (cpu가 4코어인 경우, ghz에 저장된 연관값을 꺼내서 바인딩)
    print("CPU 4코어 \(ghz)HGz입니다.")
case .cpu(core: _, ghz: _):
    print("CPU 칩 입니다.")
case .ram(32, _):
    print("32기가램 입니다.")
case .ram(_, _):
    print("램 입니다.")
case let .hardDisk(gb: gB):            // let gB = 연관값
    print("\(gB)기가 바이트 하드디스크 입니다.")
default:                               // 대부분 default문이 필요하기도 함
    print("그 외에 나머지는 관심이 없습니다. 그렇지만 칩이긴 합니다.")
}

```

### 2) 열거 unwrapping 문법 정리

#### 스위치 문; Case

- case Enum.case(let 변수이름):
- case let Enum.case(변수이름):

#### 특정 case 1개 처리하는 용도로 옵셔널 패턴 발전

> if - case 문

1. switch문 (대부분)
2. if / guard / for-in / while (필요한 경우)

```swift
enum Computer {                         // 3가지로 정의
    case cpu(core: Int, ghz: Double)
    case ram(Int, String)
    case hardDisk(gb: Int)
}

// 값 하나를 사용하기 위해서, 스위치문을 전체를 다 써야하는 불편함이 있었음
switch chip {
  case Computer.hardDisk(gb: let gB):      // let gB = 연관값
      print("\(gB)기가 바이트 하드디스크임")
  default:
      break
}
```

### 3) if case 문

#### if / guard 문

- if case / guard case 이후 `대입 연산자  ( = ) 필요`
  - 이건 원본 case 문 문법이랑 차이나는 부분
  - , 을 통해서 추가 조건 붙일 수 있음; `if 문 기본 문법`

```swift
enum Computer {                         // 3가지로 정의
    case cpu(core: Int, ghz: Double)
    case ram(Int, String)
    case hardDisk(gb: Int)
}

chip = Computer.hardDisk(gb: 128)    // 256

if case Computer.hardDisk(gb: let gB) = chip {
    print("\(gB)기가 바이트 하드디스크임")
}

if case Computer.hardDisk(gb: let gB) = chip, gB == 256 {    // 처리를 다양하게 활용 가능
    print("256기가 바이트 하드디스크임")
}
```

#### for 문

- in 을 붙여서 for - in 으로 접근 가능

  ```swift
  enum Computer {                         // 3가지로 정의
      case cpu(core: Int, ghz: Double)
      case ram(Int, String)
      case hardDisk(gb: Int)
  }

  // Computer 배열 정의
  let chiplists: [Computer] = [
      .cpu(core: 4, ghz: 3.0),
      .cpu(core: 8, ghz: 3.5),
      .ram(16, "SRAM"),
      .ram(32, "DRAM"),
      .cpu(core: 8, ghz: 3.5),
      .hardDisk(gb: 500),
      .hardDisk(gb: 256)
  ]


  // cpu인 경우만 뽑음, in 을 붙여서 for - in 으로 접근 가능
  for case let .cpu(core: c, ghz: h) in chiplists {    // 배열중에서 특정 케이스만 뽑아서 활용 가능 ⭐️
      print("CPU칩: \(c)코어, \(h)헤르츠")
  }


  // 일반 for문과 비교 =====> 모든 경우
  for chip in chiplists {
      print("\(chip)")
  }
  > -----
  cpu(core: 4, ghz: 3.0)
  cpu(core: 8, ghz: 3.5)
  ram(16, "SRAM")
  ram(32, "DRAM")
  cpu(core: 8, ghz: 3.5)
  hardDisk(gb: 500)
  hardDisk(gb: 256)
  ```

- some에 대한 케이스만 다루는 예제

  ```swift
  let arrays: [Int?] = [nil, 2, 3, nil, 5]


  for case .some(let number) in arrays {
      print("Found a \(number)")
  }
  ```
