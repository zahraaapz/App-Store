import 'dart:math';

import 'package:appstore/review/review.dart';

import 'package:appstore/model/Model.dart';
import 'package:appstore/getList/getlist.dart';

import 'package:appstore/color/color.dart';
import 'package:appstore/selectType/select_kala.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homeScreenController.dart';

class DetailKala extends StatefulWidget {
  int index;
  int select;
  List<Kala> Kalalist;
  DetailKala(
      {super.key,
      required this.index,
      required this.select,
      required this.Kalalist});

  @override
  State<DetailKala> createState() =>
      // ignore: no_logic_in_create_state
      _DetailKalaState(select: select, index: index, Kalalist: Kalalist);
}

class _DetailKalaState extends State<DetailKala> {
  _DetailKalaState(
      {required this.select, required this.index, required this.Kalalist});
  List<Kala> Kalalist;
  int select;
  int index;
HomeScreenController homeScreenController=Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Rang.blue,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => Select_kala(
                                select: select, homeScreenController: homeScreenController,
                              ))));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Stack(
                children: [
                  Container(
                    height: 380,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(select == 0
                                    ? Kalalist[index].ima!
                                    : select == 3
                                        ? Kalalist[index].ima!
                                        : select == 1
                                            ? Kalalist[index].ima!
                                            : select == 2
                                                ? Kalalist[index].ima!
                                                : select == 4
                                                    ? Kalalist[index].ima!
                                                    : Kalalist[index].ima!)
                                .image),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 30,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(110, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(Icons.view_carousel),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    select == 0
                        ? Kalalist[index].name!
                        : select == 3
                            ? Kalalist[index].name!
                            : select == 1
                                ? Kalalist[index].name!
                                : select == 2
                                    ? Kalalist[index].name!
                                    : select == 4
                                        ? Kalalist[index].name!
                                        : Kalalist[index].name!,
                    textScaleFactor: 1.9,
                  ),
                  Text(
                    select == 0
                        ? Kalalist[index].brand!
                        : select == 3
                            ? Kalalist[index].brand!
                            : select == 1
                                ? Kalalist[index].brand!
                                : select == 2
                                    ? Kalalist[index].brand!
                                    : select == 4
                                        ? Kalalist[index].brand!
                                        : Kalalist[index].brand!,
                    textScaleFactor: 1.1,
                    style: const TextStyle(color: Rang.greylight),
                    strutStyle: const StrutStyle(height: 2),
                  ),
                  Row(
                    children: [
                      Text(
                        select == 0
                            ? '${Kalalist[index].price}\$'
                            : select == 3
                                ? '${Kalalist[index].price}\$'
                                : select == 1
                                    ? '${Kalalist[index].price}\$'
                                    : select == 2
                                        ? '${Kalalist[index].price}\$'
                                        : select == 4
                                            ? '${Kalalist[index].price}\$'
                                            : '${Kalalist[index].price}\$',
                        textScaleFactor: 1.6,
                        strutStyle: const StrutStyle(height: 2),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        '20%OFF',
                        textScaleFactor: 1.1,
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Rang.toosi,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text('43.5'),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Icon(
                                    CupertinoIcons.star_fill,
                                    color: Rang.orange,
                                    size: 17,
                                  )
                                ],
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Avrange Rating',
                              style: TextStyle(color: Rang.greylight),
                            ),
                            Text('43Rating and 23 Reviews',
                                style: TextStyle(color: Rang.greylight))
                          ])
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 400,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(color: Rang.blue, width: 2),
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        child: Text(
                          'Get upto 30% of on order value above \$100',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Rang.toosi,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Use code',
                                style: TextStyle(color: Rang.grey)),
                            Text(
                              Random().nextInt(500000).toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Rang.toosi,
                    ),
                    child: const Icon(
                      Icons.favorite_border,
                      color: Rang.blue,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Rang.blue),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)))),
                        onPressed: (() {}),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.white,
                            ),
                            Text('Add to Bags')
                          ],
                        )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 18.0, left: 18, top: 18, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('43 Rating and 23 Reviews',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                  InkWell(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => Review(
                              index: index,
                              select: select,
                              listkala: Kalalist))));
                    }),
                    child: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 15,
                      color: Rang.blue,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: const [
                  Text('You might like also',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: SizedBox(
                width: double.infinity,
                height: 237,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 200,
                          child: Column(children: [
                            Container(
                              height: 140,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(Kalalist[index].ima!))),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(Kalalist[index].brand!),
                                      const Icon(
                                        Icons.favorite_border,
                                        size: 20,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    Kalalist[index].name!,
                                    style: TextStyle(color: Rang.greylight),
                                  ),
                                  Text(
                                    '${Kalalist[index].price}\$',
                                    strutStyle: StrutStyle(height: 2),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                        ),
                      );
                    })),
              ),
            )
          ],
        ),
      )),
    );
  }
}
