import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.blue[100],
                gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.white]),
              ),
              child: Image.asset('assets/images/Time.png'),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome to Go Task",
                        style: TextStyle(fontSize: 28, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          "A workspace to over 10 Million influencers around the global of the world",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  SizedBox(
                    width: 250,
                    height: 49,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                      onPressed: () {
                            //showLoginOrSignUpDialog(context);
;
                      },
                      child: const Text(
                        "Let's Start",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

