import 'package:flutter/material.dart';
import 'dart:math';
final  randomNum=Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); //_DiceRollerState() is the constructor functoion of _DiceRollerState class
  }

}



class _DiceRollerState extends State<DiceRoller>{// _firstclassnameState and _ means that this class will be used in this file only
 // eventhoug not add the constructor function the dart will add it automaticly
  //  var activeDiceImage='assets/images/dice-1.png';
  var currentRandomNum=2;
   
   void rollDice() {
    setState(() {// setState to tell flutter to reassign activeDiceImage to the memory and delete the old one
    // rerun build function
    currentRandomNum=randomNum.nextInt(6)+1;//nextInt(6) generate random integer between 0 to 5
      // activeDiceImage='assets/images/dice-$currentRandomNum.png'; 
    });
    
  }
  @override
  Widget build(context){
    return  Column(
              mainAxisSize: MainAxisSize.min,
              
              children: [
                Image.asset('assets/images/dice-$currentRandomNum.png',
                width: 200,
                ),
                const SizedBox(height: 20 ,//to add space between dice and button
                
                ),
                TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                    foregroundColor:const Color.fromARGB(255, 5, 57, 24),
                    textStyle:const TextStyle(
                      fontSize: 28,
                                           
                    )
                  ),
                 child: const Text('Roll Dice'
                 )
                 )
            ]);
  }
}