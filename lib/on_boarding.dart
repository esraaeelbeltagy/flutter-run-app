import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_sheet/login.dart';

import 'home.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28333F),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        backgroundColor: const Color(0xff28333F),
        elevation: 0,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child:const  Center(
                child: Text(
              'skip',
              style: TextStyle(fontSize: 15),
            )),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 45,
              ),
              Image.asset('assets/images/on-boarding.png'),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                margin: const EdgeInsets.symmetric(horizontal: 40),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff535E6E), width: .5),
                  color: const Color(0xff2B3744),
                  borderRadius: BorderRadius.circular(55),
                ),
                child: Column(children: [
                  const Text(
                    textAlign: TextAlign.center,
                    'Run',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 110,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff7B61FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color(0xff7B61FF),
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
