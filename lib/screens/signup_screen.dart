import 'package:flutter/material.dart';
import 'package:k_flut_udemy/constants.dart';
import 'package:k_flut_udemy/screens/login_screen.dart';
import 'package:k_flut_udemy/screens/nav_screen.dart';
import 'package:k_flut_udemy/widgets/button.dart';
import 'package:k_flut_udemy/widgets/input.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello On',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Dash app',
                      style: TextStyle(
                        fontSize: 25,
                        color: altClr,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/dash.png',
                  width: 180,
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12.0),
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Input(
                    hintText: 'dash@example.com',
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Input(
                    hintText: '*********',
                    obscureText: true,
                  ),
                  const SizedBox(height: 12.0),
                  const Text(
                    'Confirm password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Input(
                    hintText: '*********',
                    obscureText: true,
                  ),
                  const SizedBox(height: 12.0),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Button(
              width: 250,
              height: 45.0,
              label: 'Sign up',
              onPressed: () async {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NavScreen(),
                  ),
                );
              },
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?  ",
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: altClr,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
