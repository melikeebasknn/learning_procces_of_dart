import 'model/product_config_model.dart';

void main(List<String> args) {
  final newProduct = Product.money;


  productNameChange();

  calculateMoney(Product.money ?? 0);

  // use cllasimi kullanarak product yapmak istiyorum

  final user1 = User('veli', 'aa');

  final newProduct2 = Product(user1.product);
  final newProduct3 = Product.fromUser(user1);

  productNameChange();
  ProductConfig.instance.apiKey;
  ProductConfig.instance.apiKey;
  ProductLazySingleton.instance;
}
//anlamadım

void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl eklendi');
    Product.incerementMoney(5);
    
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
}

class Product {
  static int? money = 40;
  String name;

  Product(this.name);

  Product.veli([this.name = 'Melike']);

  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = "MB BANK";

  static void incerementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}