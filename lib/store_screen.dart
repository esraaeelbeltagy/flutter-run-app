// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'models/store.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({
    super.key,
  });

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
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
                      'Store',
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
                height: 10,
              ),
              //end of my appbar
              SizedBox(
                height: 100,
                child: ListView.separated(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: lista1.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemList1(
                      personCircular: lista1[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 160,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: lista2.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ItemList2(
                      storeList: lista2[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 190,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemCount: lista3.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // number of items in each row
                    mainAxisSpacing: 15.0, // spacing between rows
                    crossAxisSpacing: 15.0, // spacing between columns
                  ),
                  itemBuilder: (context, index) =>
                      ItemGrid(gridStore1: lista3[index]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'Popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    'See All',
                    style: TextStyle(
                      color: Color(0xff7B61FF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 220,
                child: GridView.builder(
                  
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  itemCount: 2,
                  shrinkWrap: true,

                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        lista4.length, // number of items in each row
                    mainAxisSpacing: 15.0, // spacing between rows
                    crossAxisSpacing: 15.0, // spacing between columns
                    childAspectRatio: 6/7,
                  ),
                  itemBuilder: (context, index) =>
                      ItemGridTwo(gridStore2: lista4[index]),
                ),
              ),
             const  SizedBox(
                height: 50,
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class ItemList2 extends StatelessWidget {
  final StoreList storeList;
  const ItemList2({
    Key? key,
    required this.storeList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 125,
      width: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: storeList.colors,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    storeList.title ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    storeList.subTitle ?? '',
                    style: const TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                storeList.image ?? '',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemList1 extends StatelessWidget {
  final PersonCircular personCircular;
  const ItemList1({
    Key? key,
    required this.personCircular,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var personCircular;
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.transparent,
          child: Image.asset(
            personCircular.image ?? '',
            //  fit: BoxFit.cover,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          personCircular.text ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class ItemGrid extends StatelessWidget {
  final GridStore1 gridStore1;
  const ItemGrid({
    super.key,
    required this.gridStore1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: const Color(0xff313849),
        border: Border.all(width: .1, color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          gridStore1.image ?? '',
          width: 40,
          height: 40,
        ),
        Text(
          textAlign: TextAlign.center,
          gridStore1.text ?? '',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ]),
    );
  }
}

class ItemGridTwo extends StatelessWidget {
  final GridStore2 gridStore2;
  const ItemGridTwo({
    Key? key,
    required this.gridStore2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 270,
      decoration: BoxDecoration(
        color: const Color.fromARGB(46, 64, 86, 110),
        border: Border.all(width: .1, color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(gridStore2.image ?? ''),
                  Positioned(
                    top: -2,
                    right: -4,
                    child: Image.asset('assets/images/Buttons.png'),
                  ),
                  Positioned(
                     top:10,
                    right: 16,
                    child: Text(
                      '1200',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Text(
                textAlign: TextAlign.center,
                gridStore2.text ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                textAlign: TextAlign.center,
                gridStore2.subText ?? '',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              //SizedBox(height: 10,)
            ]),
      ),
    );
  }
}
