import 'package:appstore/bag.dart';
import 'package:appstore/firstScreen/extractMainScreen.dart';
import 'package:appstore/model/Model.dart';

import 'package:appstore/profile/profile.dart';

import 'package:appstore/color/color.dart';
import 'package:appstore/review/review.dart';
import 'package:appstore/wish/wishlist.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
 

  RxInt selectpg = 0.obs;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
        
            
               Positioned.fill(
                 child: Obx(()=>
                  IndexedStack(
                      index: selectpg.value,
                      children: [Extractmainscreen(), Profile(), const Bag(),]),
                 ),
               ),
             
          
          Buttonbar(
              selectpg: selectpg,
              changeScreen: (int newpg) {
              
                  selectpg.value = newpg;
               
              }),
        ]),
      ),
    );
  }
}

class Buttonbar extends StatelessWidget {



  Buttonbar({Key? key, required this.changeScreen, required this.selectpg}): super(key: key);
  final Function(int n) changeScreen;
 RxInt  selectpg;


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < ikon.length; i++)
              Obx(()=> IconButton(
                    onPressed: (() {
                     changeScreen(i);
                    }),
                    icon: Icon(
                      ikon[i],
                      color: selectpg.value == i ? Rang.blue : Rang.greylight,
                      size: selectpg.value == i ? 27 : 23,
                    )),
              ),
          ],
        ),
      ),
    );
  }
}
