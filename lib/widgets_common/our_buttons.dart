
import 'package:e_commerce_app_demo/consts/consts.dart';

Widget ourButton({VoidCallback? onPress,title, color,textColor}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
       backgroundColor:color ,//Colors.red,
       padding: EdgeInsets.all(12)
    ),
    onPressed: 
      onPress,
    
    child: title.text.color(textColor).fontFamily(bold).make(),
    //child: login.text.white.fontFamily(bold).make(),
  );
}
