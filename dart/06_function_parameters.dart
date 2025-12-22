// 06_function_parameters.dart
// Topics:
// - Positional parameters
// - Named parameters
// - Mixed parameters
//
// Reference
// - dart.dev: https://dart.dev/language/functions#parameters
// - 개발하는 정대리 dart: https://www.youtube.com/watch?v=XlRIaOsaHiA&list=PLgOlaPUIbynrpTQNfJZyJhijO6i11vTNR&index=6

void main() {

// 위치 기반 매개변수
// 선언된 순서대로 값이 매핑됨
someFunction('Mori'); // name: Mori, age: null, isDone: false

// 이름 기반 매개변수
// 이름 기반이기에 이름(key)으로 매핑
// 순서 상관 없음
otherFunction(age: 26, name: 'Mori'); // name: Mori, age: 26, isDone: true

// 이름 기반과는 별개로, 위치 기반 매개변수들의 순서만 잘 맞는다면 아래의 코드도 정상 작동
mixedFunction(
  isDone: true, 
  'Mori', 
  phone: 'iPhone 16 Pro Max', 
  26, 
  height: 185); // name: Mori, age: 26, isDone: true, phone: iPhone 16 Pro Max, height: 185
}

// 아무래도 추천되는 방식 (positional -> named 흐름 순서대로)
// mixedFunction(
//   'Mori', 
//   26, 
//   isDone: true, 
//   phone: 'iPhone 16 Pro Max', 
//   height: 185); 
// }
// 결과는 동일 -> name: Mori, age: 26, isDone: true, phone: iPhone 16 Pro Max, height: 185

// ----------------------------------------------
// 1. Positional parameters - 위치 기반 매개변수 `()`
// ----------------------------------------------

// 선언된 순서대로 값이 전달됨
// []로 감싸면 '인자 전달 여부'가 optional
someFunction(String name, [int? age, bool? isDone = false]) {
  print('name: $name, age: $age, isDone: $isDone');
}

// ----------------------------------------------
// 2. Named parameters - 이름 기반 매개변수 `{}`
// ----------------------------------------------

// 매개변수의 이름으로 값이 전달됨
// {}로 감싸면 기본적으로 '인자 전달 여부'가 optional (아래 3가지 중 하나 필수 선택)
// 1. ?로 null 허용
// 2. 기본값 제공 (? 필요 없어짐)
// 3. required로 필수 지정
otherFunction({required String name, int? age, bool isDone = true}) {
  print('name: $name, age: $age, isDone: $isDone');
}

// ----------------------------------------------
// 3. Mixed parameters - 위치 기반 + 이름 기반 매개변수
// ----------------------------------------------

// () + {}를 사용해서 위치 + 이름 기반 매개변수를 같이 사용 가능
mixedFunction(String name, int age, {bool isDone = false, required String phone, int? height}) {
  print('name: $name, age: $age, isDone: $isDone, phone: $phone, height: $height');
}
