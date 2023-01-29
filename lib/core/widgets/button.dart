import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({

    required this.name
  }) ;

  final  String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(

          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.buttonColor)
          )
          ,onPressed:(){


      }, child: Text(name)),
    );
  }
}

