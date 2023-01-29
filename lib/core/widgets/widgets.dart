import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';

class TextFeilWidget extends StatelessWidget {
  const TextFeilWidget({
  required this.label,
  required this.icon,
  required this.colorIcon
  }) ;
  final String label;
  final IconData icon;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Container(height: 64,color: AppColors.textFieldFillColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
              suffix: Icon(icon,color: colorIcon,size:30 ,),
              label: Text(label),
              border: InputBorder.none
          ),


        ));
  }
}
