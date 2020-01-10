import 'package:bit_array/bit_array.dart';

class PrimeGen {
  int numberRange =100;
  BitArray _numbers;

  PrimeGen(this.numberRange) {
    _numbers = BitArray(numberRange);
    _numbers.setAll();
    _numbers.clearBits([0, 1]);
    /* ----------------------------- Seive Algorihm ----------------------------- */
    for (int i = 2; i <= numberRange; ++i) {
      if (_numbers[i]) {
        for (int j = i * i; j <= numberRange; j += i) {
          _numbers.clearBit(j);
        }
      }
    }
  }


  Map<String, Object> get info {
    var primeInfo = {
      'count' : 0,
      'primeList' : <int>[]
    };
    int count = 0;
    for (int i = 0; i < numberRange; ++i) {
      if (_numbers[i]) {
        ++count;
        (primeInfo['primeList'] as List<int>).add(i);
      }
    }
    primeInfo['count'] = count;
    return primeInfo;
  }
}
