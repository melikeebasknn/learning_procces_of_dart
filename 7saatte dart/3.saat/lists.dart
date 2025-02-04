void main() {
//bir bankaya 10 müşteri gelir bunların 100tl si vardır

  final int money1 = 100;
  final int money2 = 110;

  // 100 den büyük olanlara hoşgeldiniz beyfendi

  if (money1 > 100) {
    print("Hoşgeldiniz beyfendi");
  }
  if (money2 > 100) {
    print("aaa");
  }
  String name = '';
  //0,1,2,3...
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 300, 200];

  print("müşteri 1'in parasi ${moneys[0]}");

  //paraları parası büyük olana göre
  moneys.sort();
  moneys.add(15);
  moneys.insert(2, 34);
  //moneys.reversed.toList().add(25);
  moneys.insert(0, 260);
  print(moneys);

  //newMoneys = [];
  newMoneys.add(5);
  newMoneys.clear();

  print(newMoneys);
  //newMoneys.reversed.toList();

  //100 tane müşteri yap bunların hepsinin numarasına göre 5 tl ekle.

  List<double> customerMoney = List.generate(100, (index) {
    return index + 5;
  });
  print(customerMoney);

// Customers 100 230 35 26
//60 tl den yüksek olanlara burada kredi verilir
//küçük olanlara bayy

  List<int> customerMoneyNew = [100, 230, 35, 26];

  for (int i = 0; i < customerMoneyNew.length; i++) {
    print("müşterinin parasi: ${customerMoneyNew[i]}");
    if (customerMoneyNew[i] > 60) {
      print("kredi hazir");
    } else if (customerMoneyNew[i] > 0) {
      print('kredi veremeyiz');
    } else {
      print("bay");
    }
  }

  //listeyi tersten yazdır
  print("------------");
  for (int i = customerMoneyNew.length - 1; i >= 0; i--) {
    print(customerMoneyNew[i]);
    if (customerMoneyNew[i] > 35) {
      print("kredi hazir");
    } else if (customerMoneyNew[i] > 0) {
      print("kredi veremeyiz");
    } else {
      print("bye");
    }
  }

  print('ssss');
  List<dynamic> users = [1, 's', true];

  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['ali', 'ayşe', 'esra', 'veli'];

  userNames.contains('esra');

  for (var item in userNames) {
    if (item == 'esra') {
      print('var');
    }
  }
}