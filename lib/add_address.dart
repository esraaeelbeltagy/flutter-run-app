import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Color(0xff373b62),
              Color(0xff433648),
            ])),
        width: double.infinity,
        height: double.infinity,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 13,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Text(
                        textAlign: TextAlign.left,
                        'Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Image.asset('assets/images/direct-notification.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset('assets/images/sms-notification.png')
                  ],
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              Image.asset('assets/images/location.png'),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      'Add your address',
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
                      'Unfortunately we don\'t know where to deliver your items to you',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 150,
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
                    'Add Address',
                    style: TextStyle(
                      color: Color(0xff7B61FF),
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
