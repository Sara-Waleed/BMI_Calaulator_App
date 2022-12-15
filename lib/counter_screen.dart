// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CounterScreen  extends StatefulWidget {
  CounterScreen ({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
var counter=1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        leading:const Icon(Icons.menu),
        centerTitle: true,
        title: const Text("counter"),
        actions: const [Icon(Icons.image_aspect_ratio_outlined)],
      ),
      body: SingleChildScrollView(
       // scrollDirection: Axis.horizontal,
        child:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
           // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(onPressed: (){setState(() {
                counter-- ;
                print(counter);
              });}, child:const Text("Minus"),),
          Text( "$counter" ,style:
           const TextStyle(fontWeight: FontWeight.w900,
           fontSize: 30.0),),
              TextButton(onPressed: (){
                setState(() {
                  counter++ ;print(counter);
                });
              }, child:const Text("PLus"),),
            ],
          ),
        ),


      ) ,




    ),



    );
  }
}
