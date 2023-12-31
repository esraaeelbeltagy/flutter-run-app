import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Verfiy extends StatelessWidget {
  const Verfiy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28333F),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff28333F),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back , color: Colors.white,),
        ),
      ),
      body: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Image.asset('assets/images/send_email.png'),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            child: const Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Verify your email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Enter the email associated with your account\nwe’ll send email with password to verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Color(0xff2B3744),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: .1)),
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: const Color(0xff2B3744),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: .1)),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: const Color(0xff2B3744),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: .1)),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: const Color(0xff2B3744),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white, width: .1)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 75,
        ),
        Container(
          width: 330,
          height: 55,
          decoration: BoxDecoration(
              color: const Color(0xff7B61FF),
              borderRadius: BorderRadius.circular(25)),
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: const Color(0xff28333f),
                      icon: Center(
                        child: Image.asset('assets/images/profile-tick.png'),
                      ),
                      title: const Text(
                        'Account Updated',
                        textAlign: TextAlign.center,
                      ),
                      titleTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      content: const Text(
                        'Your account details have been successfully changed',
                        textAlign: TextAlign.center,
                      ),
                      contentTextStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                      actions: [
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff7B61FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                'Ok',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                      // contentPadding: EdgeInsets.all(5),
                    );
                  });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff7B61FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Verify Email',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.transparent),
          width: 330,
          height: 55,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                side: const BorderSide(
                  color: Color(0xff7B61FF),
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            child: const Text(
              textAlign: TextAlign.center,
              'Open mail app',
              style: TextStyle(
                color: Color(0xff7B61FF),
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
