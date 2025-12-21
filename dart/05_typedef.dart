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

}

typedef MyNickname = String;