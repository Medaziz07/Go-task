import 'package:flutter/material.dart';
import 'package:go_task/components/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static String id = 'LoginPage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.purple,
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purpleAccent, Colors.lightBlueAccent]),
          ),
          child: Column(
            children: [
              Image.asset("assets/images/choice.png"),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                child: CustomButton(
                  text: "Login",
                  onTap: () {
                    Navigator.pushNamed(context, 'LoginScreen');
                  },
                  buttonColor: Colors.white,
                  textColor: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  width: 310,
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                child: CustomButton(
                  text: "Sign Up",
                  onTap: () {},
                  buttonColor: Colors.transparent,
                  textColor: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  borderColor: Colors.white,
                  width: 310,
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 160,
              ),
              const Text(
                "Continue as a guest!",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
