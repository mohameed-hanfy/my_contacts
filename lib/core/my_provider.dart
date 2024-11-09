import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  Uri? _link;
  String? _icon;

  void setMyLink(value) {
    _link = value;
  }

  void setMyIcon(value) {
    _icon = value;
  }

  Uri? getMyLink() => _link;
  String? getMyIcon() => _icon;


  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}
