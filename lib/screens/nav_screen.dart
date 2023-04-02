import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';
import 'package:k_flut_udemy/controllers/navbar_controller.dart';
import 'package:provider/provider.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NavigationController>(
      create: (context) => NavigationController(),
      child: Consumer<NavigationController>(
        builder: (context, navigationController, child) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: navigationController.currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/home-03.png',
                    color: navigationController.currentIndex == 0
                        ? mainClr
                        : Colors.grey,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/search.png',
                    color: navigationController.currentIndex == 1
                        ? mainClr
                        : Colors.grey,
                  ),
                  label: 'Statistics',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/online-learning-01.png',
                    color: navigationController.currentIndex == 2
                        ? mainClr
                        : Colors.grey,
                  ),
                  label: 'Learning',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/ranking.png',
                    color: navigationController.currentIndex == 3
                        ? mainClr
                        : Colors.grey,
                  ),
                  label: 'Ranking',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/user (1).png',
                    color: navigationController.currentIndex == 4
                        ? mainClr
                        : Colors.grey,
                  ),
                  label: 'Menu',
                ),
              ],
              showSelectedLabels: false,
              onTap: (index) {
                navigationController.currentIndex = index;
                navigationController
                    .navigate(navigationController.screens[index]);
              },
            ),
            body: SafeArea(child: navigationController.currentScreen),
          );
        },
      ),
    );
  }
}
