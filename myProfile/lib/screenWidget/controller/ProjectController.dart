import 'package:flutter/foundation.dart';

class ProjectController extends ChangeNotifier {
  List<bool> _hovers = List.generate(10, (index) => false);

  List<bool> get hovers => _hovers;

  void onHover(int index, bool value) {
    _hovers[index] = value;
    notifyListeners();
  }
}
