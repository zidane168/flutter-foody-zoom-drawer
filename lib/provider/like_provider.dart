import 'package:flutter/material.dart';

class LikeProvider extends ChangeNotifier {

  List<int> listLike = [];

  void onLike(int id) {

    if (listLike.contains(id)) {
     listLike.remove(id);
    } else {
      listLike.add(id);
    }

    print (listLike);
    notifyListeners();    // lang nghe de thong bao lai cho ben UI rebuild lai
  }

  void onDelete(int id) {
    listLike.remove(id);
    notifyListeners();
  }

  void onDeleteAll() {
    listLike = [];
    notifyListeners();
  }
}