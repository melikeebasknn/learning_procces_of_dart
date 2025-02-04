import 'solid.dart';

void main(List<String> args) {
  IDatabase database = SQL();
  database = Mongo();
  database.write();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLoclaziaitopn() {
    manager.changeUserName('a');
    changeLocalizaiton();
  }

  void changeLocalizaiton() {
    print('object');
  }
}

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = ";l";
}

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {}
}

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

mixin IUserLocation {
  //abstract
  void locationChange();
}

mixin ILanguage {
  //abstract
  void langugae();
}

class UserLocation with IUserLocation {
  //exyends
  @override
  void locationChange() {}
}

abstract class ICamereManager {
  void readQR();
}

class DeviceCamaereManager extends ICamereManager {
  final IphoneCamereRead iphoneCamereRead;

  DeviceCamaereManager(this.iphoneCamereRead);
  @override
  void readQR() {}
}

class IphoneCamereRead extends ICamereManager {
  @override
  void readQR() {}
}