//enum bi tam sayı sınıflandırmadır value tutar 
void main(List<String> args) {
  final customerMouse = Mouses.a4;
switch(customerMouse) {
  case Mouses.magic:
    f
  case Mouses.apple:
  
  case Mouses.logitech:
  
  case Mouses.a4:
  
}

print(customerMouse.index);//sırasını yazdırır

  print(customerMouse.name); //adını yazdırabilir

  if (customerMouse == Mouses.a4) {}//direkt gruplama yaparak valuemın eşitligine bakmak daha dogru saglıklı

  if (customerMouse.name == 'a4') {}//bu cok saglıklı dgeil

  if (customerMouse.isCheckName('a4')) {
    print('aa4');
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
} 