import 'package:flutter/widgets.dart';

class BottomnavbarProvider with ChangeNotifier{
  int currentIndex=0;

  void changScreen(int index){
    currentIndex=index;
    notifyListeners();

  }
}