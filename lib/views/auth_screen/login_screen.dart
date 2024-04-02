import 'package:e_commerce_app_demo/consts/consts.dart';
import 'package:e_commerce_app_demo/widgets_common/applogo_widget.dart';
import 'package:e_commerce_app_demo/widgets_common/background_widget.dart';
import 'package:e_commerce_app_demo/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../widgets_common/our_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return backgroundWidget(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              appLogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
              10.heightBox,
              Column(
                children: [
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {}, 
                      child: forgetPassword.text.make(),                 
                    ),
                  ),
                  5.heightBox,
                  ourButton(
                    color: Colors.red,
                    title: login, 
                    textColor: Colors.black, 
                    onPress: (){})
                  //ourButton().box.width(context.screenWidth-50).make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(18))
                  .width(context.screenWidth - 70)
                  .make()
            ],
          ),
        ),
      ),
    );
  }
}
