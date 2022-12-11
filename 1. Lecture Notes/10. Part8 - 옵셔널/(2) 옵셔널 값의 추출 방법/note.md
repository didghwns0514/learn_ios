# 옵셔널 값의 추출 방법

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 특징

### 1) 옵셔널 타입 사용하기

```swift
var num: Int?
var str: String? = "안녕하세요"


print(num)
> nil
print(str)
> Optional("안녕하세요")
```

### 2) 옵셔널 값 추출하는 4가지 방법

#### 1. 강제 값 추출

- Optional 안에 값이 있음이 확실할 때 사용!
- 실무에서는 잘 사용하지는 않는다!

```swift
print(str!)
```

#### 2. if문으로 검사 후 추출

```swift
if str != nil {
    print(str!)
}

```

#### 3. if-let 바인딩 / guard-let 바인딩

-> case 문의 바인딩과 유사, 조건 부여하고 싶을 때 사용하는것과 매우 유사

- let으로 변수가 추론으로 담긴다면, nil이 아닌 것을 이용
- 아마도 let 상수 선언으로 optional이 풀릴 때, down-casting 일어나면서 값 추출해서 가져오는 듯?
- let s = str 은 syntax 처럼 사용하면 됨

```swift
if let s = str {    // s라는 상수에 담긴다면    // 값이 안 닮긴다면 nil
    print(s)
}
```

```swift
var optionalName: String? = "홍길동"

if let name = optionalName {
    print(name)
}

guard let name = optionalName else{ return } // 미리 걸러내겠다 하는 guard-let 문법
if{

}

name  // 실제 밑에서 사용 가능하게 됨!, scope가 guard문 밖에서도 유지

```

- 실무에서 자주 사용되는 optional을 함수에서 파라미터로 받기

```swift
var optionalName: String? = "Hi";

func funcTest(_ : String?){
    guard let name = optionalName else{
        print("escape!")
        return

    }// 미리 걸러내겠다 하는 guard-let 문법

    print("not escape!")
    print(name)
}


funcTest(optionalName)
> optionalName = nil > escape!
> optionalName = "Hi" > not escape! Hi
```

#### 4. 닐 코얼레싱 (Nil-Coalescing) 연산자

- 코얼레싱 : 더 큰 덩어리로 합친다! 는 의미
- 옵셔널 타입 뒤에 물음표 두개를 붙이고, default 값을 뒤에 표기해주는 것
  - python의 defaultDict 함수와 비슷, missing 되는 해시값 키를 기본키로 할당해주는 것과 매우 유사
  - 어차피 nil인 경우에 따로 표시해주고, 런타임에러 안나도록 하는게 목적이므로!
- `default 값 제시 가능할 때만 사용해야 함!`
- 삼항연산자로도 구현 가능

```swift
var serverName: String? = "홍길동"

var userName = serverName != nil ? serverName! : "미인증사용자"; // 이렇게 3항 연산자로도 풀 수 있음
var userName = serverName ?? "미인증사용자"    // String타입, 기본값으로 더 포괄적인 값이 나오게 됨


var hello = "인사하겠습니다. " + (str ?? "Say, Hi")
print(hello)


str = nil
print(str ?? "Say, Hi")
```
