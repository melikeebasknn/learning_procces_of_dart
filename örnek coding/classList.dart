class Library {
  String name;
  String writer;
  String yayinci;
  String bookNo;
  //benim kütüphanem var kütüphanede isim yazar yayinci ve yazara gore sınfılarım var
  //ben istedigim kitabı arayabilicem
  

  Library(this.name,this.writer,this.yayinci,this.bookNo);
  String toString() {
    return "Kitap: $name, yazan: $writer, yayınevi: $yayinci, ISBN: $bookNo";
  }
}
  class MyLibrary {
  List<Library> kitaps = [];
  void kitapEkle(Library kitap) {
    kitaps.add(kitap);
    print("${kitap.name} kütüphaneye ekledim.");
  }

  void kitapSil(String bookNo) {
    kitaps.removeWhere((kitap) => kitap.bookNo == bookNo);
    print("ISBN numarası $bookNo kitabı sildim.");
  }

  
void kitaplariListele() {
    if (kitaps.isEmpty) {//kütüphanem bossa boş der
      print("kitap yok burada");
    } else {
      print("the books that in my library");
      for (var kitap in kitaps) {//eger degilse kitapları listelerr
        print(kitap);
      }
      
    }
  }
}

void main() {
  var kutuphanem = MyLibrary();

  var book1= Library("Nutuk", "Atatürk", "Can yayın", "9789750726439");
  var book2= Library("Beyaz zambaklar ülkesinde", "Grigory petro", "iş bank", "9786053410877");
  var book3= Library("1984", "George Orwell", "Can yayın", "9789750718533");

  kutuphanem.kitapEkle(book1);
  kutuphanem.kitapEkle(book2);
  kutuphanem.kitapEkle(book3);

  kutuphanem.kitaplariListele();


}

