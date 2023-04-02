import 'package:flutter/widgets.dart';
import 'package:k_flut_udemy/screens/first_step_screen.dart';
import 'package:k_flut_udemy/screens/home_screen.dart';
import 'package:k_flut_udemy/screens/ranking_screen.dart';
import 'package:k_flut_udemy/screens/search_screen.dart';

class NavigationController extends ChangeNotifier {
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const FirstStepScreen(),
    const RankingScreen(),
    const Center(),
  ];
  int currentIndex = 0;
  late Widget currentScreen;

  NavigationController() {
    currentScreen = screens[currentIndex];
  }

  void navigate(Widget screen) {
    currentScreen = screen;
    if (screens.contains(screen)) {
      currentIndex = screens.indexOf(screen);
    } else {
      currentIndex = 0;
    }
    notifyListeners();
  }
}
