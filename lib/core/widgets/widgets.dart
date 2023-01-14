import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';

class TextFeilWidget extends StatelessWidget {
  const TextFeilWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 64,color: AppColors.textFieldFillColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
              suffix: Icon(Icons.check,color: AppColors.checkedIconColor,size:30 ,),
              label:const Text("name"),

              border: InputBorder.none
          ),


        ));
  }
}
