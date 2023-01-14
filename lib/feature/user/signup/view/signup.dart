

import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';
import 'package:mobile_development_groub3/core/constants/appTexts.dart';
import 'package:mobile_development_groub3/core/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: AppColors.backgroundColor,
      body: Container(margin:const EdgeInsets.symmetric(vertical:99,horizontal: 16 ),

      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft,child: Text(AppText.signUpText,style:const TextStyle(fontSize:34 ,fontWeight: FontWeight.w800 ),)),
          const SizedBox(height: 73,),
          TextFeilWidget()

        ],
      ),
      )
    );
  }
}

