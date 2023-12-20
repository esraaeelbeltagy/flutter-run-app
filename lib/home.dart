import 'package:flutter/material.dart';
import 'package:flutter_sheet/add_address.dart';
import 'package:flutter_sheet/history.dart';
import 'package:flutter_sheet/verfiy_email.dart';

import 'package:percent_indicator/percent_indicator.dart';

import 'models/history.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              UpConttainer(),
              const SizedBox(
                height: 20,
              ),
              const DownContainer(),
              ListView.separated(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: history.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                  height: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return OneItem(
                    historyList: history[index],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DownContainer extends StatelessWidget {
  const DownContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Container(
            height: 125,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color(0xff82AFFF),
                Color(0xffF14985),
              ]),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          textAlign: TextAlign.left,
                          'Share & Get',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          textAlign: TextAlign.left,
                          'Get 2x point for every steps, only valid for today',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: 24,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xff2F3C5033),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'share',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    // width: 194,
                    height: 111,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: Image.asset(
                              'assets/images/store/group2.png',
                            ).image,
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                textAlign: TextAlign.left,
                'History',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                textAlign: TextAlign.left,
                'See All',
                style: TextStyle(
                  color: Color(0xff7B61FF),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class UpConttainer extends StatelessWidget {
  const UpConttainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Color(0xff6756d1),
                Color(0xff444079),
              ]),
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Center(
                  child: Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    'assets/images/1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textAlign: TextAlign.left,
                        'Hello !',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.left,
                        'Esraa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const AddAddress()),
                      );
                    },
                    child:
                        Image.asset('assets/images/direct-notification.png')),
                const SizedBox(
                  width: 15,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Verfiy()),
                      );
                    },
                    child: Image.asset('assets/images/sms-notification.png'))
              ],
            ),

            //end of appBar

            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.left,
                                    '14,000 / ',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    '15,000',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.left,
                                    ' steps',
                                    style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              textAlign: TextAlign.right,
                              'Level 5',
                              style: TextStyle(
                                color: Color(0xffFFC932),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      LinearPercentIndicator(
                        //width: 300.0,
                        lineHeight: 8.0,
                        percent: 0.7,
                        barRadius: const Radius.circular(20),
                        linearGradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xffB96FFF),
                              Color(0xff55CB74),
                            ]),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/Level badge.png')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 87,
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(color: Colors.white, width: .1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/runner.png'),
                        const Positioned(
                          right: 2,
                          bottom: 2,
                          child: CircleAvatar(
                            backgroundColor: Color(0xff43C465),
                            radius: 7,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            textAlign: TextAlign.left,
                            '26 May',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            textAlign: TextAlign.left,
                            'Today',
                            style: TextStyle(
                              color: Color(0xff43C465),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            textAlign: TextAlign.left,
                            '01 : 09 : 44 ',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: CircularPercentIndicator(
                        radius: 35.0,
                        startAngle: 210,
                        // animation: true,
                        //animationDuration: 1200,
                        lineWidth: 5.0,
                        percent: 0.4,
                        center: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/ic_steps.png',
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  textAlign: TextAlign.center,
                                  '2345',
                                  style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Container(
                                    height: .5,
                                    width: 26,
                                    decoration: const BoxDecoration(
                                        color: Colors.white),
                                  ),
                                ),
                                const Text(
                                  textAlign: TextAlign.center,
                                  '5000',
                                  style: TextStyle(
                                    color: Color(0xff43C465),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //circularStrokeCap: CircularStrokeCap.butt,
                        backgroundColor: Colors.white10,
                        progressColor: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 125,
                  width: 163,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Colors.white, width: .1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          textAlign: TextAlign.left,
                          '53,524',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 37,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/steps.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              textAlign: TextAlign.left,
                              'steps',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
                Container(
                  height: 125,
                  width: 163,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(color: Colors.white, width: .1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          textAlign: TextAlign.left,
                          '1000',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 37,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/coin.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              textAlign: TextAlign.left,
                              'Earned Points',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

// class OneItem extends StatelessWidget {
//   const OneItem({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.white, width: .1),
//         borderRadius: BorderRadius.circular(15),
//         color: const Color(0xff2F3C5066),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Expanded(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children:  [
//                   Text(
//                     textAlign: TextAlign.left,
//                     '27 May',
//                     style: TextStyle(
//                       color: Color(0xff7B61FF),
//                       fontSize: 15,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                  const  SizedBox(
//                     height: 5,
//                   ),
//                   Row(
//                     children:const  [
//                       Text(
//                     textAlign: TextAlign.left,
//                     '100 pt  ',
//                     style: TextStyle(
//                       color: Colors.pink,
//                       fontSize: 13,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                       Text(
//                         textAlign: TextAlign.left,
//                         '. 12,4 km  . 1222 kcal',
//                         style: TextStyle(
//                           color: Color(0xffFFFFFF),
//                           fontSize: 13,
//                           fontWeight: FontWeight.w300,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             const Text(
//               textAlign: TextAlign.left,
//               '11,120',
//               style: TextStyle(
//                 color: Color(0xffFFFFFF),
//                 fontSize: 25,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Text(
//               textAlign: TextAlign.left,
//               '  steps',
//               style: TextStyle(
//                 color: Color(0xffFFFFFF),
//                 fontSize: 13,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
