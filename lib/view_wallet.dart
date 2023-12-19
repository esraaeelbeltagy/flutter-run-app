import 'package:flutter/material.dart';

class ViewWallet extends StatelessWidget {
  const ViewWallet({super.key});

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
                        'New Wallet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                height: 130,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Select the \nwithdrawal type',
                style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: .1),
                  color: const Color(0xff2F3C50),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xff7B61FF),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xff7B61FF), width: 1),
                      ),
                      child: Image.asset('assets/images/bank.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            textAlign: TextAlign.start,
                            'Bank Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            'Unfortunately we don\'t know \nwhere to send your money',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.white,
                      weight: .5,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: .1),
                  color: const Color(0xff2F3C50),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xffF14985),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xffF14985), width: 1),
                      ),
                      child: Image.asset('assets/images/card.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            textAlign: TextAlign.start,
                            'Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            textAlign: TextAlign.start,
                            'Unfortunately we don\'t know \nwhere to send your money',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.white,
                      weight: .5,
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
