void main(List<String> args) {
  final user = _User('veli', age: 21);

  // müsterinin yanısnı 18 den küçük mü

  // if ((user.age ?? 10) < 18)

  if (user.age is! int) {
    if (user.age! < 18) {
      print('evet kucuk');
      user.updateMoneyWithString("TL");
    } else {
      user.updateMoneyWithNumber(15);
    }
  }
  // müsterilerimin parası farklı birimlerde olanilir
  // paranın adı ya miktarı tutulacak
  // tl yazacak ya da 15 de yazabilir
  // ekranda yazdır
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + "A");







  int money1 = 50;
  int money2 = 50;

  if (money1 == money2) {
    print('okii');
  }

  final moneyBank1 = Bank(56, '12');
  final moneyBank2 = Bank(40, '12');

  print(moneyBank1 == moneyBank2);
  final newResult = "a" + "a";

  // iki kiişinin parasını topla sonucunu ver

  
  print(moneyBank1 + moneyBank2);

  // bankma gelen muşterimin id si ayni olanlae ayni muşteri olmalı
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  // diger bankadan alınan modükü ekleyip müşterinin parasını sorgula
  // müşteri adamin parasina 10 tl ekle ekrana yazdır, adamin idsini 1 artır adını da melike yap
  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('melike');

  print(moneyBank1);
}

class _User {
  final String name;

  int? age;

  dynamic moneyType;

  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}






class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return money + newBank.money;
  }

  



  
  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + 'veli';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bank && other.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print('money');
  }
}