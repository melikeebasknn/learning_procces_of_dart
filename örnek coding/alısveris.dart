
abstract class Urun {
  String ad;
  double fiyat;

  Urun(this.ad, this.fiyat);
  void urunInfo();
}

class Teknolocik extends Urun {
  String marka;
  Teknolocik(String ad, double fiyat, this.marka) : super(ad, fiyat);

  @override
  void urunBilgisi() {
    print("elektronik: $ad, Marka: $marka, Fiyat: $fiyat TL");
  }
}


class Giyim extends Urun {
  String beden;

  Giyim(String ad, double fiyat, this.beden) : super(ad, fiyat);

  @override
  void urunInfo() {
    print("👕 Giyim: $ad, Beden: $beden, Fiyat: $fiyat TL");
  }
}

// 📖 Kitap Ürün Sınıfı
class Kitap extends Urun {
  String yazar;

  Kitap(String ad, double fiyat, this.yazar) : super(ad, fiyat);

  @override
  void urunInfo() {
    print("📖 Kitap: $ad, Yazar: $yazar, Fiyat: $fiyat TL");
  }
}

// 🛒 Alışveriş Sepeti
class Sepet {
  List<Urun> urunler = [];

  void urunEkle(Urun urun) {
    urunler.add(urun);
    print("${urun.ad} sepete eklendi.");
  }

  void sepetGoruntule() {
    print("\n Sepetiniz:");
    for (var urun in urunler) {
      urun.urunInfo();
    }
  }

  double toplamFiyat() {
    double toplam = urunler.fold(0, (sum, urun) => sum + urun.fiyat);
    return toplam;
  }
}


void main() {
  Sepet sepet = Sepet();

  // Ürünleri Oluştur
  var telefon = Teknolocik("iPhone 14", 45000, "Iphone");
  var tshirt = Giyim("jean", 400, "38");
  var roman = Kitap("nutuk", 500, "Atatürk");

  
  sepet.urunEkle(telefon);
  sepet.urunEkle(tshirt);
  sepet.urunEkle(roman);

  
  sepet.sepetGoruntule();

  
  print("\n sepetin toplam fiyatı: ${sepet.toplamFiyat()} TL");
}
