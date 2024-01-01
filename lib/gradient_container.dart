import 'package:first_project/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
   GradientContainer(this.colors,{super.key});
  List <Color> colors;
  @override
  Widget build(context) {
    
    return Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
        ),
          ),

          child:  Center(
            child:Column(
              children: [
                Image.asset('assets/images/dice-1.png',width: 200,),
                TextButton(onPressed: rollDice,
                 child: const Text('Roll Dice'))
            ]),
             
        ),
      );
      
  }

  void rollDice() {
  }
}