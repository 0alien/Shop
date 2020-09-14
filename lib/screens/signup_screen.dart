import 'package:flutter/material.dart';
import 'package:shop/screens/login_screen.dart';
import 'package:shop/widgets/logo.dart';
import 'package:shop/widgets/my_text_field.dart';
import '../consts.dart';

class SignupScreen extends StatefulWidget {
  static String id = 'SignupScreen';
  String name, password;
  SignupScreen({Key key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: gColor,
      body: Form(
        key: myKey,
        child: ListView(
          children: [
            Logo(),
            SizedBox(
              height: height * .1,
            ),
            MyTextField(
              //scure: false,
              icon: Icons.person,
              hint: 'Enter Your Name',
            ),
            SizedBox(
              height: height * .03,
            ),
            MyTextField(
              // scure: false,
              icon: Icons.email,
              hint: 'Enter Your Email',
            ),
            SizedBox(
              height: height * .03,
            ),
            MyTextField(
              //scure: true,
              icon: Icons.lock,
              hint: 'Enter Your Password',
            ),
            SizedBox(
              height: height * .05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: wColor),
                ),
                onPressed: () {
                  if (myKey.currentState.validate()) {}
                },
                color: bColor,
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Do you have an account ? ',
                  style: TextStyle(color: wColor, fontSize: 15),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: bColor,
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * .1,
            ),
          ],
        ),
      ),
    );
  }
}
