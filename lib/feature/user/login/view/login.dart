




import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';
import 'package:mobile_development_groub3/core/constants/appImages.dart';
import 'package:mobile_development_groub3/core/constants/appTexts.dart';
import 'package:mobile_development_groub3/core/widgets/button.dart';
import 'package:mobile_development_groub3/core/widgets/widgets.dart';
import 'package:mobile_development_groub3/feature/user/forget/view/forget_password.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

        backgroundColor: AppColors.backgroundColor,
        body: Container(margin:const EdgeInsets.symmetric(vertical:99,horizontal: 16 ),

          child: Column(
            children: [
              Align(alignment: Alignment.centerLeft,child: Text(AppText.logInText,style:const TextStyle(fontSize:34 ,fontWeight: FontWeight.w800 ),)),
              const SizedBox(height: 73),
              TextFeilWidget(label: "email",colorIcon: AppColors.checkedIconColor,icon: Icons.check,),
              SizedBox(height: 8),

              TextFeilWidget(label: "Password",colorIcon: AppColors.checkedIconColor,icon: Icons.check,),

              SizedBox(height: 16,),

              InkWell(
                  onTap:(){

                    Navigator.of(context).push(MaterialPageRoute(builder: (_){
                      return ForgetPassword();
                    }));

                  },

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                       Text(AppText.forgotPassword,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                      const  SizedBox(width: 8,),
                      Image.asset("assets/images/arrow.png",width: 25,height: 15,)

                    ],
                  )
              ),

              SizedBox(height: 47,),
              GeneralButton(name: AppText.loginUpCapital),

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


