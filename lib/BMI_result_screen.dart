import 'package:flutter/material.dart';

class BmiResult  extends StatelessWidget {
   BmiResult({super.key, required this.result, required this.age, required this.isMale});

  final int result;
  final int age;
  final bool isMale;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const  Text('BMI result'),
        centerTitle: true,
        
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Gender : ${isMale ? 'Male' : 'Female'}',

              style:const  TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,

              ),),
              Text('Result : $result',

                style:const  TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,

                ),),
              Text('Age : $age',

                style:const  TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,

                ),),

            ],
          ),
        ),

    ) ;
  }
}
