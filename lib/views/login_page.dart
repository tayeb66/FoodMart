import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:food_mart/Auth_Controller/auth_controller.dart';
import 'package:food_mart/views/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthController authController = AuthController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/background.png'))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400,
                width: double.infinity,
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Sign in to continue'),
                    Text(
                      'FoodMart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Colors.green,
                              offset: Offset(3, 3),
                            )
                          ]),
                    ),
                    // with custom text
                    Column(
                      children: [
                        SignInButton(
                          Buttons.Google,
                          onPressed: () {
                            authController.googleSignUp().then((value) =>
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage())));
                          },
                          text: 'Sign in with google',
                        ),
                        SignInButton(
                          Buttons.Apple,
                          onPressed: () {},
                          text: 'Sign in with apple',
                        ),
                        SignInButton(
                          Buttons.Facebook,
                          onPressed: () {},
                          text: 'Sign in with facebook',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'By signin you are agreeing to our',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                        Text('Terms and Privacy Policy'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
