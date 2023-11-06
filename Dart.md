# 다트 문법

## 클래스 정의
```dart
// 클래스명은 대문자로 시작
class Person {
  String? name;
  int? age;
  String? sex;
}

void main() {
  Person p1 = Person();
  // Person p1 = new Person();

  p1.age = 30;

  print(p1.age); // 출력 함수
}
```

# Reference
[QQ 연산자 사용 방법, 삼항연산자보다 간편하게 쓰기](https://leftday.tistory.com/123)
