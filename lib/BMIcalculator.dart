
import 'dart:math';

import 'package:flutter/material.dart';

import 'BMI_result_screen.dart';

class BmiCalculator extends StatefulWidget {
 const   BmiCalculator({super.key});




  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
bool isMale=true;
double hieght =120.0;
int weight=40;
int age =20;


 Color? color= Colors.grey[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text("Calculator"),
          centerTitle: true,
        ),
        body: Column(
          children:[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                //first item in first row or container
                Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;

                        });
                      },
                      child: Container(
                          child: Column (

                            mainAxisAlignment: MainAxisAlignment.center,
                            children:   const [

                            Image(
                              image: AssetImage("images/malee.png"),
                            height: 90.0,
                                width: 90.0,
                                ),
                              SizedBox(height:15.0 ,),
                              Text("Male",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,

                              ),
                              )
                            ],
                          ),
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color:isMale ? Colors.blue :Colors.grey[400],
                       ),
                        ),
                    ),
                  ),
                const SizedBox(width:20.0 ,),
                Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale=false;

                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(image: AssetImage("images/femalee.png"),
                                height: 90.0,
                                width: 90.0,
                              ),
                              SizedBox(height:15.0 ,),
                             Text("Female",
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,

                                ),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color:!isMale ? Colors.blue :Colors.grey[400],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ),







//second container
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color:  Colors.grey[400],

                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   const   Text("Hight",
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline:TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                         "${hieght.round()}",
                            style:const TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                     const  SizedBox(width:5.0 ,),
                          const   Text(
                           'cm'
                       ),

                        ],

                      ),

                       Slider(value: hieght,
                           onChanged:(value){
                         setState(() {
                           hieght=value;

                         });
                           },
                           min: 80.0,
                           max: 220.0,
                           ),
                    ],
                  ),
                ),
              ),
            ),










//third container
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(

              children: [
              Expanded(
  child:   Container(

    decoration: BoxDecoration(



      borderRadius: BorderRadius.circular(5.0),

    color: Colors.grey[400],



    ),

    child:   Column(

  mainAxisAlignment: MainAxisAlignment.center,

      children:[

    const    Text(
      "Weight",
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
          ),

        ),
      Text("$weight",
          style: const TextStyle(
          fontSize: 30.0,
              fontWeight: FontWeight.bold,

          ),



        ),



    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        FloatingActionButton(onPressed: (){
          setState(() {
            weight--;
          });
        },
          mini: true,
          child: const Icon(Icons.minimize_outlined),
        ),
        FloatingActionButton(onPressed: (){
          setState(() {
            weight++;

          });
        },
          mini: true,
          child:const Icon(Icons.add),
        ),

      ],

    ),

      ],



    ),

  ),
),
              const  SizedBox(
                  width: 20.0,
                ),
              Expanded(
                  child:   Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[400],
                    ),

                    child:   Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children:[
                        const Text("AGE",
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      Text("$age",
                          style: const  TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,

                          ),
                        ),



                        Row(
mainAxisAlignment: MainAxisAlignment.center,


                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              mini: true,
                              child: const Icon(Icons.minimize_outlined),
                            ),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                             mini: true,
                              child: const Icon(Icons.add),
                            ),



                          ],



                        ),







                      ],



                    ),

                  ),
                ),
              ],

          ),
            ),
          ),



      //forth last section
      Container(
        width: double.infinity,
        height: 50.0,
        color: Colors.amber,
        child: MaterialButton(onPressed: (){
          double result = weight / pow(hieght/100, 2);
          print(result.round());
         Navigator.push(
           context,
           MaterialPageRoute(
             builder:(context)=>BmiResult(
               age: age,
               isMale: isMale,
               result: result.round(),
             ), ),
         );
        },
        child: const Text("Calculate",
        style: TextStyle(color: Colors.black,fontSize: 20.0),)),
      ),

          ],

        ),




    );
  }
}
