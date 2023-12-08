import 'package:flutter/widgets.dart';

class ProviderApp extends ChangeNotifier {
  int _angka = 0;
  int _index = 0;
  int get hitung => _angka;

  final List<String> _names = ['Aby','Aish','Ayan','Ben','Bob','Charlie','Cook','Carline'];
  List<String> get getNames => _names;
  int get getIndex => _index;

  void increment() {
    _angka++;
    notifyListeners();
  }
  void decrement() {
    if (_angka > 0) {
      _angka--;
    }
    notifyListeners();
  }

  void setIndex(int index) {
    _index = index;
  }
  
}