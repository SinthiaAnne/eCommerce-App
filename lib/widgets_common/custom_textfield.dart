import 'package:e_commerce_app_demo/consts/consts.dart';

Widget customTextField({String? title,String? hint}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(Colors.red).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: Colors.grey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: Color.fromARGB(255, 215, 243, 183),
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            )
          )
        ),
      ),
      5.heightBox,
    ],
  );
}