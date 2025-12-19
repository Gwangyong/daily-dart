// 04_functions.dart
// Topics:
// - functions
//
// Reference
// - dart.dev: https://dart.dev/language/functions
// - 개발하는 정대리 dart: https://www.youtube.com/watch?v=-ELq4jv2ygs&list=PLgOlaPUIbynrpTQNfJZyJhijO6i11vTNR&index=4

void main() {

  // ----------------------------------------
  // 1. functions
  // ----------------------------------------

  final String result = saySomething();
  print(result);
  // 퇴근해서 행복~
  // 하지만 공부는 조금이라도 해야겠지...

  // 이름 있는 매개변수(isTrue)는 기본값(true)을 가지고 있기에 생략 가능
  print(myAge(26)); // myAge: 26 / isTrue: true
  
  // 필요하면 매개변수를 명시적으로 전달해서 기본값을 덮어쓸 수 있음
  print(myAge(26, isTrue: false)); // myAge: 26 / isTrue: false
}

// - 함수 정의 예시
// 반환자료형 함수이름(매개변수1자료형 이름, 매개변수2자료형 이름) { }

// 함수 정의
String saySomething() { // 반환 타입을 생략하면 dynamic이 됨
  print('퇴근해서 행복~');
  return '하지만 공부는 조금이라도 해야겠지...';
}

// 매개변수를 포함한 함수 정의
// 기본값을 가지는 매개변수는 {}로 감싸서 선언해야함
String myAge(int age, {bool isTrue = true}) {
  return 'myAge: $age / isTrue: $isTrue' ;
}
