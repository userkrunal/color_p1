import 'package:flutter/material.dart';
import 'dart:math';

class Color_Pallet extends StatefulWidget {
  const Color_Pallet({Key? key}) : super(key: key);

  @override
  State<Color_Pallet> createState() => _Color_PalletState();
}

class _Color_PalletState extends State<Color_Pallet> {

  List col=[];
  int a1=0,a2=0,a3=0,a4=0,a5=0,a6=0;

  int? num;
  List t = [];
  List colors = [
    Colors.white,
    Colors.blue,
    Colors.black,
    Colors.grey,
    Colors.redAccent,
    Colors.greenAccent,
    Colors.amberAccent,
    Colors.pinkAccent,
    Colors.purpleAccent,
    Colors.deepPurpleAccent,
    Colors.deepOrangeAccent,
    Colors.orangeAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.orange.shade100,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Color Palette\n",
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                    TextSpan(
                        text: "Generator",
                        style: TextStyle(fontSize: 25, color: Colors.black)),
                  ],
                ),
              ),
              Container(
                width: 80,
                height: 300,
                alignment: Alignment.center,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.teal,border: Border.all(color: Colors.black)),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Pallet(colors[a1]),
                    Pallet(colors[a2]),
                    Pallet(colors[a3]),
                    Pallet(colors[a4]),
                    Pallet(colors[a5]),
                    Pallet(colors[a6]),
                  ],
                ),
              ), //Color Pallet
              GestureDetector(onTap: () {
                setState(() {
                  Random rand = Random();
                  a1 = rand.nextInt(12);

                  a2= rand.nextInt(12);
                  while(a2 == a1)
                  {
                    a2 = rand.nextInt(12);
                  };

                  a3 = rand.nextInt(12);
                  while(a3 == a1 || a3==a2)
                  {
                    a3 = rand.nextInt(12);
                  };

                  a4 = rand.nextInt(12);
                  while(a4 == a1 || a2==a4 || a4==a3)
                  {
                    a4= rand.nextInt(12);
                  };

                  a5 = rand.nextInt(12);
                  while(a5 == a1 || a5==a2 || a5==a3 || a5==a4)
                  {
                    a5 = rand.nextInt(12);
                  };

                  a6 = rand.nextInt(12);
                  while(a6 == a1 || a6==a2 || a6==a3 || a6==a4 || a6==a5)
                  {
                    a6 = rand.nextInt(12);
                  };
                  t = [a1,a2,a3,a4,a5,a6];
                  //print ("$t $a1 $a2 $a3 $a4 $a5 $a6");
                });
              },

                child: Container(
                  height: 50,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(15)),
                    border: Border.all(color: Colors.black),
                  ),

                  child: Text("Generate",
                      style: TextStyle(fontSize: 25, color: Colors.black)),
                ),
              ), //    Generate
            ],
          ),
        ),
      ),
    );
  }

  Widget Pallet(Color c1)
  {
    return Container(
      height: 40,
      width: double.infinity,
      color: c1,
    );
  }
}
