

void main(List<String> args) {
  int money = 20;
  String userName = "veli";

  //if else
  bool isCostumerRich = true;
  if(money > 10 ){
    print("sen zenginsin aabi");
    }else{
      print("simit ye aabi");
    }
    money = money - 20;
    if(money>10){
      print("sen cok zenginsin aabi");
    }else{
      print("abi napıyon burada");
    }
  
//musterinin 10 tl si var ve sorgu yapar
//sorgu sonucu 20 tlsi alınır
//eger kalan para sıfırdan kücükse kovulur

int newCostumerMoney = 25;
const int bankingCost = 5;
const int bankingCostGeneral = 20;
if(newCostumerMoney>bankingCost){
  print("HOSGELDİNİZ");
  newCostumerMoney = newCostumerMoney - bankingCostGeneral;
    }else if(newCostumerMoney >0){
    print("sıra alın");
  }else{
    print("kredi borcunuzu odeyin");
  }

//
final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String veliCompany = "Veli";
  final String kxCompony = "kx";
  

  const int companyLenght = 3;

  String results = "";

  if (ahmetCompany.length > companyLenght) {
      
      results = results + ahmetCompany;
      }
  if(mehmetCompany.length > companyLenght){
      
      results = results + mehmetCompany;
      }
  if(veliCompany.length > companyLenght) {
      
      results = results + veliCompany;
      }
  if(kxCompony.length > companyLenght){
      
      results = results + kxCompony;
      }
  if(results.isEmpty) {
    print("patron yok");
  }else {
    print(results);
  }


//switch case
    final int classDegree = 45;
  bool isSucess = false;
  // 2 ise ekrana bravo
  // 1 ise olur
  // 0 ise yeterli
  // diger durumlarda basarrisiz

  const int succesValueHigh = 4;

  switch (classDegree) {
    case succesValueHigh:
      print('bravo');
      isSucess = true;
      break;
    case 1:
      print('olur');
      isSucess = true;

      break;
    case 0:
      print('yeterli');
      isSucess = true;

      break;
    default:
      print('basarsiz');
      isSucess = false;
  }
}