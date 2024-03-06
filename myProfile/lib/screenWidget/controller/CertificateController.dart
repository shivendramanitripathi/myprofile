import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CertificationController extends ChangeNotifier {
  List<bool> _hovers = List.generate(14, (index) => false);

  List<bool> get hovers => _hovers;

  void onHover(int index, bool value) {
    _hovers[index] = value;
    notifyListeners();
  }
}
