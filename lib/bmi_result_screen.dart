import 'package:flutter/material.dart';
import 'home_screen.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final int age;
  final bool isMale;

  BMIResultScreen({
    @required this.result,
    @required this.age,
    @required this.isMale,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 14, 32, 1),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_sharp)
        ),
        title: Text(
          'BMI Result',
        ),
      ),
      body: Container(
        color: Color.fromRGBO(10, 14, 32, 1),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.grey.withOpacity(0.4),
            ),

            height: 150,
            width: 300,
           
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gender : ${isMale?'Male':'Female'}',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Result : $result',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Age : $age',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
