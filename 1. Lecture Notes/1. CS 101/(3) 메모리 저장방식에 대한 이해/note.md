# 메모리 저장방식에 대한 이해

---

## 강의 reference

[앨런 Swift문법 마스터 스쿨 (온라인 BootCamp - 2개월과정)](https://www.inflearn.com/course/스위프트-문법-마스터-스쿨/dashboard)

---

<br>

## 내 정리 참조

[컴퓨터구조-링크](https://korshika.tistory.com/category/CS%20%EC%A7%80%EC%8B%9D/%E2%97%8B%20CA%28Computer%20Architecture%29)

[컴퓨터OS-링크](https://korshika.tistory.com/category/CS%20%EC%A7%80%EC%8B%9D/%E2%97%8B%20OS%28Operating%20System%29?page=2)

### 1) 메모리 저장 방식과 2 /16 진법

- 10진법 <-> 2진법; 변환 가능
- CPU는 그 물리적 특성상 비트 방식으로 사용하므로 이진법 사용
- 1 byte = 8 bit는 데이터 기본 단위로 약속
- 이 2전법을 32(2^32) / 64(2^64) 비트 등으로 묶어서 사용
  - 한번에 처리할 수 있는 메모리 용량
- 2진법을 16진법 hex로 사용하여, 사용자가 보다 문자단위로 편리하게 이해하도록 함; 2진법 4묶음 = 16진법 1개의 자리를 의미
- 예시
  - 아스키코드, 유니코드, 색상값 등...
