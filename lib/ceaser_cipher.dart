import 'dart:math';

class CeaserCipher {
  encrypt(plainText, k) {
    plainText = plainText.toLowerCase();
    String abc = "abc";
    List character = abc.split("");
    String name = "";
    var whichRank;
    
    character.forEach((str) {
      name = name + str;
    });

    character.map((a) {
       whichRank = alhabet["a"];
      
    });
    print(whichRank);

  }

  Map alhabet = {
    "a": 0,
    "b": 1,
    "c": 2,
    "ç": 3,
    "d": 4,
    "e": 5,
    "f": 6,
    "g": 7,
    "ğ": 8,
    "h": 9,
    "i": 10,
    "ı": 11,
    "j": 12,
    "k": 13,
    "l": 14,
    "m": 15,
    "n": 16,
    "o": 17,
    "ö": 18,
    "p": 19,
    "r": 20,
    "s": 21,
    "ş": 22,
    "t": 23,
    "u": 24,
    "ü": 25,
    "v": 26,
    "y": 27,
    "z": 28,
  };
  decrypt(encryptText, k) {}
  int builNumber() {
    Random random = Random.secure();
    int k = random.nextInt(256000) + 1;
    print(k);
    return k;
  }
}
