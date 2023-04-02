import 'dart:math';

import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';
import 'package:k_flut_udemy/controllers/navbar_controller.dart';
import 'package:k_flut_udemy/screens/lesson_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 100.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [mainClr, altClr],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Let’s Learn With Dash',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'The best resourses to learn Flutter',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/dash.png'),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10.0),
                  padding: const EdgeInsets.all(10),
                  height: 80.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: altClr,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text(
                                'Level 1',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                ' ----> ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: altClr,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Level 2',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 10.0,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
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
                      Transform.rotate(
                        angle: pi / 2,
                        child: const SizedBox(
                          height: 10.0,
                          width: 70.0,
                          child: Divider(
                            thickness: 2,
                            color: altClr,
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Screen time',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            '4.25 h',
                            style: TextStyle(
                              fontSize: 20,
                              color: altClr,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'My learning',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 185.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      LessonCard(),
                      LessonCard(),
                      LessonCard(),
                      LessonCard(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Boring Shows:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 204.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ShowCard(),
                      ShowCard(),
                      ShowCard(),
                      ShowCard(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LessonCard extends StatelessWidget {
  const LessonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
        builder: (context, navigationController, child) {
      return InkWell(
        onTap: () {
          navigationController.navigate(const LessonScreen());
        },
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 5,
                color: Colors.grey,
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  child: Image.asset('assets/flutter.png')),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Stateless Class',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

class ShowCard extends StatelessWidget {
  const ShowCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 5,
            color: Colors.grey,
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(8),
              ),
              child: Image.asset('assets/boringshow.png')),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'The Boring Flutter Development\nShow[Pilot Episode]',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          )
        ],
      ),
    );
  }
}
