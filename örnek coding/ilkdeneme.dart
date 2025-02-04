//VBjet ucak firması için bagaj agırlıgına gore uygulanan tarifleri if else kod bloguyla yaz
//2 kilograma kadar olan gönderilerin kilogramını 6 TL’ye,
//2 kilogram ve 6 kilogram arasında olan gönderilerin kilogramını 5 TL’ye,
//6 kilogram ve 10 kilogram arasında olan gönderileri kilogramını 4 TL’ye,
//10-15 kilogram arasında olan gönderileri kilogramını 3TL’ye taşımaktadır.
//15 kg üzerini vbjet taşımıyor

void main(){
  print("hoşgeldiniz VBJET'i tercih ettiginiz için tşkler");
  int bagajAgirligi = 0;
  int borc = 0;
  if(bagajAgirligi >= 0 && bagajAgirligi < 2 ){
    borc = bagajAgirligi * 6;
    print("bagaj borcunuz : $borc");
  }else if(2 <= bagajAgirligi && bagajAgirligi < 6){
    borc = bagajAgirligi * 5;
    print("bagaj borcunuz : $borc");
  }else if(6 <= bagajAgirligi && bagajAgirligi < 10){
    borc = bagajAgirligi * 4;
    print("bagaj borcunuz : $borc");
  }else if(10 <= bagajAgirligi && bagajAgirligi < 15){
    borc = bagajAgirligi * 3;
    print("bagaj borcunuz : $borc");
  }else{
    print("biz sizi uçuramayız");
  }
  
  //ERÜDE OKUYAN MELİKE'NİN PROGRAMLAMA1 DERSİNDE 8 DEVAMSIZLIK HAKKI VARDIR
  //VİZE VE FFİNAL ADINDA İKİ SINAVI VARDIR 
  //DERSİ VERBEİLMEK İÇİN FİNALL NOTU +50 OLMALI 
  //(VİZE * %40) + (FFİNAL * %60)>= 50 OLMAK ZORUNDADIR
  //SINAV ORT (+85 İSE AA) (70-85 İSE BB) (50-70 İSE CC) (<50 İSE DD)
  //EGER MELİKE FİNALDE VEREMEZSE Bİ ŞANS DAHA TANINSIN VE BÜTE GİRSİN BÜTTEN +80 ALIRSA GEÇSİN
  //MELİKENİN DERSİ VEREBİLMESİ İÇİN TÜM ŞARTLAR SAĞLANMALIDIR

  String studentName = "Melike";
  int vizeNotu = 51;
  int ffinal = 45 ;
  int devamsizlik = 5;
  double sinavOrt = (vizeNotu * 4/10) + (ffinal * 6/10);
  String harfNotu = "";
  int butNotu = 75;
  
  if(devamsizlik <= 8){
    print(studentName+ "devamsılıgınız uygun");
  }else{
    print(studentName + "devamsılıktan kaldın okula geleydin");
  }
  
  if(ffinal >= 50){
    print("final notun uygun");
    }else{
    print("final notun yetersiz kaldın");
    }
  print("sinav ortalaman = $sinavOrt");
  if(sinavOrt<50){
    double eksik = 50  - sinavOrt;
    print("sınav ortalaman $eksik kadar yüksek olsa CC VERİRDİN");
  }
  if(sinavOrt >= 85) {
  harfNotu = "AA";
  print(studentName + " canım tebrikler " + harfNotu + " ile verdin bu dersi");
  }else if(sinavOrt < 85 && sinavOrt >=70 ){
  harfNotu = "BB";
  print(studentName + " canım tebrikler " + harfNotu + " ile verdin bu dersi");
  }else if(sinavOrt < 75 && sinavOrt >= 50){
  harfNotu = "CC";
  print(studentName + " canım tebrikler " + harfNotu + " ile verdin bu dersi");
  }else{
    print("harf notun yetersiz oldugu icin kaldın ama büte girebilirsin");
    print("büt notun = $butNotu ");
    if(butNotu>=80){
      print("harf notun yetmedi ama bütle geçtin");
      
    }else{
      print("bütle bile geçemedin");
    }
    print("sana son bi şans eger adın 5 harfse veya küçükse geçcen");
    if(studentName.length <= 5){
      print("anan baban sagolasın");
      }else{
      print("nasip be kanka");
    }
  }
}