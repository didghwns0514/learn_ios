# (8) (앱 - 2: 주사위) 앱 만들기, 코드 설정하기

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) 이미지 asset에 추가

asset 폴더 골라서 여기다 넣으면 됨

- 2x, 3x 등은 해상도 의미
- 보통 2x에 넣음

### 2) 이미지 asset 땡겨오기

```swift
    var diceList: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6") ]
```

### 3) 이미지 랜덤 업데이트 부

```swift
secondImage.image = diceList[Int.random(in: 0...5)]
firstImage.image = diceList.randomElement() // 이걸로 해도 됨!
```

- swift 특징이 class 기반이어서 잘 찾아보면 잘 나옴!!
