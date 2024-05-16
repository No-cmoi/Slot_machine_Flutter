import 'dart:math';

class Jackpot{

  List <String> images = [
    "bar.png",
    "cerise.png",
    "cloche.png",
    "diamant.png",
    "fer-a-cheval.png",
    "pasteque.png",
    "sept.png"
  ];

  List <String> currentImages = ["bar.png", "bar.png","bar.png"];
  String message = "";

  void spin(){
    currentImages.clear();
    Random random =  Random();
    for (int i = 0; i < 3; i++) {
      int randomIndex = random.nextInt(images.length);
      currentImages.add(images[randomIndex]);
    }
  }

  String checkForJackpot() {
  if (currentImages.length == 3 &&
      currentImages[0] == "sept.png" &&
      currentImages[1] == "sept.png" &&
      currentImages[2] == "sept.png") {
    return "SUPER JACKPOT !";
  } else if (currentImages.length == 3 &&
      currentImages[0] == currentImages[1] &&
      currentImages[1] == currentImages[2]) {
    return "Jackpot !!!";
  } else {
    return "You loose... Try again !";
  }
}

}