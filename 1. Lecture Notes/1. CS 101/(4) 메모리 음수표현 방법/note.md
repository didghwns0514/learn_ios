# 메모리 음수표현 방법

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

## 내 정리 참조

[컴퓨터구조-링크](https://korshika.tistory.com/category/CS%20%EC%A7%80%EC%8B%9D/%E2%97%8B%20CA%28Computer%20Architecture%29)

[컴퓨터OS-링크](https://korshika.tistory.com/category/CS%20%EC%A7%80%EC%8B%9D/%E2%97%8B%20OS%28Operating%20System%29?page=2)

### 1) 음수 표현법
- 첫째 자리 sign 비트
- 변수에 signed/unsigned로 앞자리 sign 비트임을 표현
- 어떠한 signed 양수의 binary를 모두 뒤집고 + 1을 하면 음수값을 얻을 수 있음
  - 빠르게 계산 가능
  - 음수 구할 수 있음
