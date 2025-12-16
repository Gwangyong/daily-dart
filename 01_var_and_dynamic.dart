// Reference
// - dart.dev: https://dart.dev/language/variables
// - 개발하는 정대리 dart: https://www.youtube.com/watch?v=kg5FK0L7S-o&list=PLgOlaPUIbynrpTQNfJZyJhijO6i11vTNR

void main() {

  // ----------------------------------------
  // 1. var
  // ----------------------------------------

  // 변수는 var로 표현
  // 이 경우에는 자료형을 추론함
  var myName = 'Mori';
  print(myName); // Mori

  // runtimeType: "이 변수가 실제 어떤 타입으로 동작하는지"를 실행 중(runtime)에 확인하는 프로퍼티
  print(myName.runtimeType); // String

  // 자료형을 확정한다면, 앞에 타입을 명시
  int myAge = 26;
  print(myAge);  // 26
  print(myAge.runtimeType); // int

  // ----------------------------------------
  // 2. dynamic
  // ----------------------------------------

  // dynamic을 사용해 어떤 자료형도 받을 수 있도록 가능
  // 타입 체크를 포기하는 키워드
  dynamic value = 33;

  print(value); // 33
  print(value.runtimeType); // int

  value = 'hi';

  print(value); // hi
  print(value.runtimeType); // String
}

/// ""와 ''차이점
/// 결론부터 말하자면 의미상 차이 x
/// var a = "hello";
/// var b = 'hello';
/// 둘 다 String으로 성능, 타입 차이는 없다고함.
/// 
/// 다만, 구분해서 사용하면 문자열 안에 따옴표를 쓰기 편해짐
/// var text1 = "I'm learning Dart"
/// var text2 = 'He said "Hello"';
/// 
/// 이렇게 escape(\', \") 안써도 됨. 가독성도 up
/// 
/// 보통은 'hello' 이렇게 작성하고, 
/// 문자열 안에 '가 있을때만 ""를 사용해서 "I'm Mori" 이런식으로 많이 사용한다고 함