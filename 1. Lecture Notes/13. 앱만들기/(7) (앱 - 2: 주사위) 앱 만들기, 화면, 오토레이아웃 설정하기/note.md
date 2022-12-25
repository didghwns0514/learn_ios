# (7) (앱 - 2: 주사위) 앱 만들기, 화면, 오토레이아웃 설정하기

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

### 참조

### 특징

### 1) 새롭게 이미지 뷰 넣을 것

<img src='images/2022-12-25-16-16-32.png' />
- objet 단축키 : command + shift + L

### 2) 가로 혹은 세로로 그리드 유지해야하는 그룹 있을 시

- Embbed in > stack view 사용

<img src='images/2022-12-25-16-21-23.png' />  
<img src='images/2022-12-25-16-22-22.png' />

#### spacing & distribution

<img src='images/2022-12-25-16-23-45.png' />  
<img src='images/2022-12-25-16-25-20.png' />
- spacing으로 공간 띄워주고, distribution으로 남은 길이 분배

### 3) 스택 뷰 잡아주기

<img src='images/2022-12-25-16-27-50.png' />
- 센터 2개 맞추기
<img src='images/2022-12-25-16-29-53.png' />  
- 여기서 필요한 constraints 추가로 확인할 수 있음(빨간색 표시가 되면)
<img src='images/2022-12-25-16-30-42.png' />  
- aspect ratio를 이미지 안에서 잡아도 됨
