import 'package:flutter/material.dart';
import 'package:mobile_development_groub3/core/Style/app_colors.dart';
import 'package:mobile_development_groub3/core/constants/appImages.dart';
import 'package:mobile_development_groub3/core/constants/appTexts.dart';
import 'package:mobile_development_groub3/core/widgets/button.dart';
import 'package:mobile_development_groub3/core/widgets/widgets.dart';
import 'package:mobile_development_groub3/feature/user/login/view/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    GlobalKey<FormState> formKey=GlobalKey<FormState>();
    return  Scaffold(

      backgroundColor: AppColors.backgroundColor,
      body: Container(margin:const EdgeInsets.symmetric(vertical:99,horizontal: 16 ),

      child: Form(
        key: formKey,
        child: Column(
          children: [
            Align(alignment: Alignment.centerLeft,child: Text(AppText.signUpText,style:const TextStyle(fontSize:34 ,fontWeight: FontWeight.w800 ),)),
            const SizedBox(height: 73),
            TextFeilWidget(controller: nameController,label:"name" ,icon: Icons.check,colorIcon: AppColors.checkedIconColor,),
            SizedBox(height: 8),
            TextFeilWidget(controller: emailController,label: "email",icon: Icons.check,colorIcon: AppColors.checkedIconColor,),
            SizedBox(height: 8),

            TextFeilWidget(controller: passwordController,label: "Password",icon: Icons.check,colorIcon: AppColors.checkedIconColor,),

           SizedBox(height: 16,),

            InkWell(
              onTap:(){
               Navigator.of(context).push(MaterialPageRoute(builder: (_){
                 return Login();
               }));

              },

           child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Already have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                const  SizedBox(width: 8,),
                Image.asset("assets/images/arrow.png",width: 25,height: 15,)

              ],
            )
            ),

          SizedBox(height: 47,),
            // GeneralButton(name: AppText.signUpCapital),
        Container(
          width: double.infinity,
          child: ElevatedButton(

              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColors.buttonColor)
              )
              ,onPressed:(){

                if(formKey.currentState!.validate()){
                  print("success");

                }


          }, child: Text("Sign Up")),
        ),
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
      ),
      )
    );
  }
}

