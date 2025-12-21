// 05_typedef.dart
// Topics:
// - typedef
//
// Reference
// - dart.dev: https://dart.dev/language/typedefs
// - 개발하는 정대리 dart: https://www.youtube.com/watch?v=SiryTSKrTQI&list=PLgOlaPUIbynrpTQNfJZyJhijO6i11vTNR&index=5

void main() {
  // ----------------------------------------
  // 1. typedef, 별칭 (swift의 typealias)
  //    typedef를 활용해서 타입에 대한 '별칭'을 정할 수 있음
  // ----------------------------------------

  // 예시: typedef 별칭이름 = 반환타입 Function(매개변수타입들);

  MyNickname name = 'Mori';
  print('name.runtimeType: ${name.runtimeType}'); // name.runtimeType: String

  calculate(3, 4, add); // result: 7
  calculate(3, 4, multiply); // result: 12
}

// 간단 예시
typedef MyNickname = String;

// 추가 예시
typedef Operation = int Function(int a, int b);

int add(int a, int b) => a + b;
int multiply(int a, int b) => a * b;

void calculate(int a, int b, Operation operation) {
  final result = operation(a, b);
  print('result: $result');
}