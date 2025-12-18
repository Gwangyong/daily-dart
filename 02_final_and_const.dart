// 02_final_and_const.dart
// Topics:
// - final
// - const
//
// Reference
// - dart.dev: https://dart.dev/language/variables#final-and-const
// - 개발하는 정대리 dart: https://www.youtube.com/watch?v=NG81o8ZhrIs&list=PLgOlaPUIbynrpTQNfJZyJhijO6i11vTNR&index=2

void main() {

  // 상수는 선언 이후 다시 할당 불가, final과 const 키워드를 사용

  // ----------------------------------------
  // 1. final
  // ----------------------------------------

  // 런타임(runtime)에 값이 결정됨
  // 실행 중에 한 번 값이 결정된 후 재할당 불가
  
  final name = 'Mori';
  final int age = 26; // 타입 지정 가능
  // name = 'A'; <- 에러발생

  print("name: $name, type: ${name.runtimeType}"); // name: Mori, type: String
  print("age: $age, type: ${age.runtimeType}"); // age: 26, type: int

  final now = DateTime.now(); // 런타임에 값이 결정되기에 "가능"

  // ----------------------------------------
  // 2. const
  // ----------------------------------------

  // 컴파일 타임(compile-time)에 값이 확정됨
  // 컴파일러가 실행 없이 계산 가능한 값만 허용되며 재할당 불가

  const appName = 'Podoit';
  const int maxCount = 5; 

  print("appName: $appName, type: ${appName.runtimeType}"); // name: MoriOS, type: String
  print("maxCount: $maxCount, type: ${maxCount.runtimeType}"); // age: 26, type: int

  // const now2 = DateTime.now(); <- final과 다르게 컴파일 시점에 값이 정해지기에 "불가능"
}