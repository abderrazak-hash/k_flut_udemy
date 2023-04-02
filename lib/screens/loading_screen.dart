import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';
import 'package:k_flut_udemy/screens/login_screen.dart';
import 'package:k_flut_udemy/screens/nav_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double width = 0;

  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() async {
    await Future.delayed(const Duration(milliseconds: 100)).then((value) {
      setState(() {
        if (width < 200) {
          width += 10;
          loading();
        } else {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/dash.png')),
          Container(
            height: 10.0,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  width: width,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: altClr,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
