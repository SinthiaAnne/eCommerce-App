import 'package:e_commerce_app_demo/consts/consts.dart';
import 'package:e_commerce_app_demo/views/auth_screen/login_screen.dart';
import 'package:e_commerce_app_demo/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashScrenn extends StatefulWidget {
  const SplashScrenn({super.key});

  @override
  State<SplashScrenn> createState() => _SplashScrennState();
}

class _SplashScrennState extends State<SplashScrenn> {


  // creating the method to change screen
  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      //Using getx
      Get.to(()=> const LoginScreen());
    }
    );
  }



  @override

  void initState() {
    // TODO: implement initState
    changeScreen();
    super.initState();
  }

  
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          children: [
            
             Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg,width: 300)) ,
              20.heightBox,
              appLogoWidget(),
              10.heightBox,
              appname.text.fontFamily(bold).size(22).white.make(),
             
            appversion.text.white.make(),
           
            const Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,
            
             
          ],
        ),
      ),
    );
  }
}