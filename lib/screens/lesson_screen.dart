import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';
import 'package:k_flut_udemy/controllers/navbar_controller.dart';
import 'package:k_flut_udemy/screens/home_screen.dart';
import 'package:provider/provider.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
        builder: (context, navigationController, child) {
      return WillPopScope(
        onWillPop: () async {
          navigationController.navigate(const HomeScreen());
          return false;
        },
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 190,
                width: double.infinity,
                child: Image.asset(
                  'assets/flutter.png',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'StatelessWidget class',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'A widget that does not require mutable state. A stateless widget is a widget that describes part of the userinterface by building  constellation..Read More.',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const Text(
                          'Tasks:',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: altClr,
                          ),
                        ),
                        // Code Zone
                        const Text(
                          'The following is a skeleton of a stateless widget subclass calledgreenFrog.Normally, widgets have more constructor arguments,each of which corresponds to a final property:',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10.0),
                          padding: const EdgeInsets.all(10),
                          // height: 80.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'class ',
                                    ),
                                    TextSpan(
                                      text: 'GreenFrog',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' extends ',
                                    ),
                                    TextSpan(
                                      text: 'StatelessWidget {',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Text('const GreenFrog({super.key,)}'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text('@override',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    )),
                              ),
                            ],
                          ),
                        ),

                        /// Code Zone

                        const Text(
                          'This next example shows the more generic widget Frog which can be given a color and a child:',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10.0),
                          padding: const EdgeInsets.all(10),
                          // height: 80.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'class ',
                                    ),
                                    TextSpan(
                                      text: 'GreenFrog',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' extends ',
                                    ),
                                    TextSpan(
                                      text: 'StatelessWidget {',
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: Text('const Frog({'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 45.0),
                                child: Text('super.key,'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 45.0),
                                child: Text(
                                    'this.color = const Color(0xFF2DB2E3),'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
