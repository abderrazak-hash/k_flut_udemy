import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';
import 'package:k_flut_udemy/controllers/navbar_controller.dart';
import 'package:k_flut_udemy/screens/lesson_screen.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.all(30.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: altClr,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: altClr,
                  size: 25.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2.0,
                    color: altClr,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
                hintStyle: TextStyle(
                  color: altClr,
                  fontSize: 15.0,
                  letterSpacing: 1,
                ),
                hintTextDirection: TextDirection.ltr,
                contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              ),
            ),
          ),
          LessonCardSearch(),
        ],
      ),
    );
  }
}

class LessonCardSearch extends StatelessWidget {
  const LessonCardSearch({
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
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
          width: 130.0,
          height: 160.0,
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
              Expanded(
                child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(8),
                    ),
                    child: Image.asset(
                      'assets/flutter.png',
                      // height: 100,
                      fit: BoxFit.fill,
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Text(
                  'Stateless Class',
                  style: TextStyle(
                    fontSize: 17,
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
