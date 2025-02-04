void main(List<String> args) {
  IUser user = Turk();

  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'melike';

  @override
  void sayName() {
    print('merhabahosgeldiniz $name');
    print('ac mısınız');
  }
}

class English implements IUser {
  @override
  String get name => 'Adam';

  @override
  void sayName() {
    print('welcome to your home $name');
    print("ar you hungry");
  }
}