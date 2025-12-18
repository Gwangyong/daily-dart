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
  // ❌ name = 'A'; <- 에러발생

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

  print("appName: $appName, type: ${appName.runtimeType}"); // appName: Podoit, type: String
  print("maxCount: $maxCount, type: ${maxCount.runtimeType}"); // maxCount: 5, type: int

  // ❌ const now2 = DateTime.now(); <- final과 다르게 컴파일 시점에 값이 정해지기에 "불가능"
  
  // ----------------------------------------
  // 3. 클래스 + final (인스턴스 변수)
  // ----------------------------------------

  // 인스턴스 변수는 인스턴스가 생성될 때 값이 정해짐 (런타임)
  // 그래서 final은 가능

  final user1 = User(name: 'Mori', age: 26);
  final user2 = User(name: 'Podoit', age: 1);

  print('user1 name: ${user1.name}, age: ${user1.age}'); // user1 name: Mori, age: 26
  print('user2 name: ${user2.name}, age: ${user2.age}'); // user2 name: Podoit, age: 1

  // user1.name = 'A';
  // ❌ name 필드가 final이라 값 재할당 불가능

  // ----------------------------------------
  // 4. 클래스 + const (인스턴스 변수 불가능)
  // ----------------------------------------

  // 인스턴스 변수는 인스턴스마다 값이 달라질 수 있음
  // 컴파일 타임에 하나의 값으로 확정할 수 없기 때문에 const 불가능

  // class WrongUser {
  //   const String name = 'A'; // ❌ 인스턴스 필드(swift의 프로퍼티)는 const 불가능
  // }

  // ----------------------------------------
  // 5. static const (클래스 공통 상수)
  // ----------------------------------------

  // static const는 클래스에 딱 1개만 존재(인스턴스와 무관)
  // 컴파일 타임 상수인 const로 선언 가능

  print('App version: ${AppConfig.version}'); // App version: 1.0.0
  print('App build: ${AppConfig.build}'); // App build: 1
}

  // ----------------------------------------
  // User 클래스
  // ----------------------------------------

  // this: 현재 인스턴스를 가리킴 (Swift의 self와 동일)
  // required: 매개변수에 이름을 필수로 만들어 값을 생략 불가능 하도록 함 (안주면 에러. 가독성 up)
  class User {
    final String name;
    final int age;

    User({
      required this.name,
      required this.age,
    });
  }

  // ----------------------------------------
  // AppConfig 클래스 (static const 예시)
  // ----------------------------------------

  class AppConfig {
    // 클래스 전체에서 공유되는 상수
    // 컴파일 타임에 값 확정
    static const String version = '1.0.0';
    static const int build = 1;
  }