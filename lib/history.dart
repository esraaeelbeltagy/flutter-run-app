import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'models/history.dart';

class History extends StatelessWidget {
  const History({super.key});

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
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
                    'History',
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
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(color: Colors.white, width: .1),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 2, left: 2),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/timer.png',
                            width: 40,
                          ),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          const Text(
                            textAlign: TextAlign.left,
                            '18,3 h',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            textAlign: TextAlign.left,
                            'Time',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white12,
                      height: 21,
                      width: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/routing.png', width: 40),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          const Text(
                            textAlign: TextAlign.left,
                            '48,7 km',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            textAlign: TextAlign.left,
                            'Distance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white12,
                      height: 21,
                      width: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/heart-circle.png',
                            width: 40,
                          ),
                          // const SizedBox(
                          //   height: 5,
                          // ),
                          const Text(
                            textAlign: TextAlign.left,
                            '123 BPM',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            textAlign: TextAlign.left,
                            'Heart Beat',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 20),
                shrinkWrap: true,
                itemCount: history.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return OneItem(historyList: history[index],);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class OneItem extends StatelessWidget {
  final HistoryList historyList ;
  const OneItem({
    super.key,required this.historyList,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: .1),
        borderRadius: BorderRadius.circular(15),
        color:  Color(0xff2F3C5066),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                   Text(
                    textAlign: TextAlign.left,
                    historyList.day ?? '',
                    style: const TextStyle(
                      color: Color(0xff7B61FF),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children:const  [
                         Text(
                        textAlign: TextAlign.left,
                        '100 pt ',
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),    
                      Text(
                        textAlign: TextAlign.left,
                        ' . 12,4 km  . 1222 kcal',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                        
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
             Text(
              textAlign: TextAlign.left,
              historyList.steps ?? '',
              style: const TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              textAlign: TextAlign.left,
              '  steps',
              style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 13,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
