import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';
import 'package:mobile_development_groub3/core/constants/appImages.dart';
import 'package:mobile_development_groub3/core/constants/appTexts.dart';
import 'package:mobile_development_groub3/core/widgets/button.dart';
import 'package:mobile_development_groub3/core/widgets/widgets.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    return  Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Container(
          margin:const EdgeInsets.symmetric(
              vertical:99,horizontal: 16 ),
          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft,child: Text(AppText.forgotPasswordTitle,style:const TextStyle(fontSize:34 ,fontWeight: FontWeight.w800 ),)),
              const SizedBox(height: 73),
              Text(AppText.hintForgetPassword),
              SizedBox(height: 16,),
              TextFeilWidget(controller: emailController,label: "email",icon: Icons.close,colorIcon: AppColors.errorColor,),
              SizedBox(height: 8),
              GeneralButton(name: AppText.sendCapital),
              SizedBox(height: 125,),
              Text(AppText.socialText),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("${AppImages.biasImagePath}google.png",width: 100,height: 70,),
                  Image.asset("${AppImages.biasImagePath}facebook.png",width: 100,height: 70,),
                ],
              )




            ],
          ),
        )
    );
  }
}


