class Kullanici {
  String isim;
  int bakiye;

  Kullanici(this.isim,this.bakiye);

  void bilgileriGoster() {
    print("$isim hesabında $bakiye TL var.");
  }
}

abstract class Islem {
  void uygula(Kullanici kullanici);
}

class ParaYatirma extends Islem {
  int miktar;

  ParaYatirma(this.miktar);

  @override
  void uygula(Kullanici kullanici) {
    kullanici.bakiye+=miktar;
    print("${kullanici.isim},hesabına $miktar TL yatırıldı.");
  }
}
class ParaCekme extends Islem {
  int miktar;

  ParaCekme(this.miktar);

  @override
  void uygula(Kullanici kullanici) {
    if (kullanici.bakiye >=miktar) {
      kullanici.bakiye -=miktar;
      print("${kullanici.isim}, hesabından $miktar TL çekildi");
    } else {
      print("o kadar paran yoook");
    }
  }
}

void main() {
  Kullanici kullanici = Kullanici("melike",40);

  kullanici.bilgileriGoster();

  ParaYatirma paraYatirma = ParaYatirma(5);
  paraYatirma.uygula(kullanici);

  kullanici.bilgileriGoster();

  ParaCekme paraCekme = ParaCekme(50);
  paraCekme.uygula(kullanici);

  kullanici.bilgileriGoster();

}
