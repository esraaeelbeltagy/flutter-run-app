import 'package:flutter/material.dart';
import 'package:flutter_sheet/on_boarding.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28333F),
      body: SafeArea(
        child: Stack(
          // clipBehavior: Clip.antiAliasWithSaveLayer,
          // fit: StackFit.loose,
          children: [
            Positioned(
              child: Image.asset(
                'assets/images/get-strated.png',
                fit: BoxFit.cover,
                width: double.infinity,
                // height: double.infinity,
              ),
            ),
            Positioned(
              top: 500,
              left: 50,
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.center,
                      'Running App',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      'Run and earn with our app.Some \ntext Example will be her',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: 300,
                      height: 56,
                      decoration: BoxDecoration(
                          color: const Color(0xff7B61FF),
                          borderRadius: BorderRadius.circular(25)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const OnBoarding()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff7B61FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
