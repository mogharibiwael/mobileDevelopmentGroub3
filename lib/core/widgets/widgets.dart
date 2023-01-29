import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';

class TextFeilWidget extends StatelessWidget {
  const TextFeilWidget({
  required this.label,
  required this.icon,
  required this.colorIcon,
  required this.controller
  }) ;
  final String label;
  final IconData icon;
  final Color colorIcon;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(height: 64,color: AppColors.textFieldFillColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          controller:controller ,
          validator: (value){
            if(value!.length <4){
              return "the world must be more than 4 char ";

            }
          },
          decoration: InputDecoration(
              suffix: Icon(icon,color: colorIcon,size:30 ,),
              label: Text(label),
              border: InputBorder.none
          ),


        ));
  }
}
