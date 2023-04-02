import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';

class FirstStepScreen extends StatelessWidget {
  const FirstStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 230,
            child: Stack(
              children: [
                Container(
                  height: 180.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [mainClr, altClr],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                ),
                const Positioned(
                  top: 145.0,
                  left: 120,
                  child: Text(
                    '1st step',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 135.0,
                  left: 25,
                  child: Container(
                    height: 90.0,
                    padding: const EdgeInsets.all(8),
                    width: 90.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Container(
                      height: 60.0,
                      padding: const EdgeInsets.all(8),
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: altClr.withOpacity(.6),
                          width: 7,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text(
                          '1',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: altClr,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView(
                children: const [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1-Install Flutter on your sytstem.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2-Set up an editor:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'You can build apps with Flutter using any text editor combined with Flutter’s\n command-line tools. However, we recommend using one of our editor plugins for an even better experience. These plugins provide you with code completion, syntax highlighting, widget editing assists, run & debug support,and more.Use the following steps to add an editor plugin for VS Code, Android Studio, IntelliJ, or Emacs. If you want to use a different editor, that’s OK, skip ahead to the next step: Test drive.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '3-Test Drive:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'This page describes how to create a new Flutter app from templates, run it,and experience “hot reload” after you make changes to the app.Select your development tool of choice for writing, building, and runningFlutter apps.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '4-Write your first flutter app:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'You are now ready to start the “First Flutter app” codelab. In about an hourand a half, you will learn the basics of Flutter by creating an app that workson mobile, desktop, and web.',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '5-Learn more:',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Learn more about the Flutter framework from the following pages: \n     Introduction to widgets\n     Building layouts tutorial\n     Add interactivity tutorial',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
