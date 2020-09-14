import 'package:flutter/material.dart';
import 'package:shop/consts.dart';

class MyTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onClick;
  //final bool scure;
  String errorMsg(String) {
    switch (hint) {
      case 'Enter Your Name':
        return 'Name is Empty!';
      case 'Enter Your Email':
        return 'Email is Empty!';
      case 'Enter Your Password':
        return 'Password is Empty!';
    }
  }

  MyTextField(
      {@required this.onClick,
      @required this.hint,
      @required this.icon /*, @required this.scure*/});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (value) {
          if (value.isEmpty) {
            return errorMsg(hint);
          }
        },
        obscureText: hint == 'Enter Your Password' ? true : false,
        cursorColor: gColor,
        onSaved: onClick,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: gColor,
          ),
          hintText: hint,
          filled: true,
          fillColor: wColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: wColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: wColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(color: wColor),
          ),
        ),
      ),
    );
  }
}
