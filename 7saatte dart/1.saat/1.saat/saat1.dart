
void main(List<String> arguments) {
// müşterinin adını tut, parasını öğren bizim bankaya geldiginiz 
//+5 tl ver acaba 10 tl yapabilir miyiz de
String userName = "veli";
int userMoney = 300;
print("hoşgeldiniz $userName bakiyeniz $userMoney");
userMoney += 5;
print("bizi tercih ettiginiz icin bakiyenize 5 tl eklenmiştir güncel paranız : $userMoney ");

//verimizi sabitlemek için final tanımlarız
final int userMoneyy = 305;
//userMoneyy += 5; hata verir ekleyemez
//print(userMoneyy) hata verir final değeri değişmezz

//ödev2 58.dk
//100 kisilik halı saha var 
//saat 10da 20 kislik müsteri1 mac yapacak
//saat 10da müsteri2 50 kisi mac yapacak
//bundan sonra benim halı sahamda kac kisilik yer kaldı
const int kapasite = 100;
print("benim halısahamın toplam kapasitesi $kapasite kişidir");
int musteri1 = 20;
int musteri2 = 50;
int kalanKapasite = kapasite - (musteri2+musteri1);
print(kalanKapasite.toString() + "kişilik yer kalmıstır");


}