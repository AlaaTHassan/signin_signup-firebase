 import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String? text;
  final IconData? iconData;
  final IconData? icon;
  final TextEditingController controller;


  const CustomTextField({Key? key, this.text, this.iconData, this.icon, required this.controller}) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool cc = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      validator: ( val)
      {
        if(val!.isEmpty&&widget.text=="E-mail")
        {
          return "invaled email";
        }else if(val.isEmpty&&widget.text=="Password")
        {
          return "invaled password";
        }else if(val.isEmpty&&widget.text=="Name")
        {
          return "invaled Name";
        }
      },


      obscureText:cc? widget.text=="Password"?false:true:widget.text=="Password"?true:false ,
      controller: widget.controller,

      cursorColor: Colors.indigo,

      style: TextStyle(color: Colors.indigo),
      decoration: InputDecoration(
        labelText: widget.text,
        prefixIcon:Icon(widget.iconData,color: Colors.indigo,) ,
        suffixIcon:GestureDetector(
            onTap: ()
            {

              setState(() {
                cc=!cc;
              });
            },
            child: Icon(widget.icon,color: Colors.indigo,)) ,
        labelStyle: TextStyle(color: Colors.indigo),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
      ),
    );
  }
}
