// 03_conditionals_and_optional
// Topics:
// - conditionals
// - optional
//
// Reference
// - dart.dev: https://dart.dev/language/operators#logical-operators
// - 개발하는 정대리 dart: https://www.youtube.com/watch?v=vyZk0TWE8TM&list=PLgOlaPUIbynrpTQNfJZyJhijO6i11vTNR&index=3

void main() {

  // ----------------------------------------
  // 1. conditionals, 조건문
  // ----------------------------------------

  var myName = 'Mori';

  if (myName == 'Mori') {
    print('Mori 입니다.'); // Mori 입니다.
  } else if (myName == 'Podoit') {
    print('Podoit 입니다.');
  } else {
    print('넌 누구니');
  }

  final isDarkmode = true;

  // 삼항 연산자 " ? 참 : 거짓"
  // final result = isDarkmode ? '다크모드 O' : '다크모드 X'; // 아래 코드와 같음. 축약상태
  final result = isDarkmode == true ? '다크모드 O' : '다크모드 X';
  print(result); // 다크모드 O

  // ----------------------------------------
  // 2. optional, 옵셔널
  // ----------------------------------------

  // null은 swift의 nil
  // "값이 아예 없음"을 의미함

  // var name = null; // <- 가능
  String? name = null;
  // ❌ String name = null; // String으로 고정하면 값이 있다는거라서 안됨. ?로 optional이라고 명시해주어야 사용가능

  final resultName = name ?? '이름없음';
  // final String resultName = name ?? '이름없음'; // <- 가능. ?? 로 값이 없을때를 대비했기에

  print('resultName: $resultName'); // resultName: 이름없음
  print('resultName.runtimeType: ${resultName.runtimeType}'); // resultName.runtimeType: String
}