import 'package:app_lazam/app/data/app_const.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget defaultButton({
  double width = double.infinity,
  Color textColor = Colors.white,
  Color buttonColor = KprimaryColor,
  @required String buttontext,
  @required Function onClick,
}) =>
    MaterialButton(
      minWidth: width,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      textColor: textColor,
      height: 45,
      color: buttonColor,
      onPressed: onClick,
      child: Text(buttontext),
    );

Widget defaultTextFialed(
        {@required String hintText,
        @required Widget suffixIcon,
        bool obscureText = false,
        Widget prefixIcon,
        TextInputType keyboardType = TextInputType.name,
        int maxLines = 1,
        TextEditingController controller,
        Function validator}) =>
    Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          keyboardType: keyboardType,
          maxLines: maxLines,

          decoration: InputDecoration(
            errorStyle: TextStyle(fontWeight: FontWeight.bold),
            
            contentPadding: EdgeInsets.all(10.0),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1,
              ),
            ),
            suffixIcon: prefixIcon,
            prefixIcon: suffixIcon ,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 12,
              color: Color(0xffCECECE),
              fontWeight: FontWeight.bold,
            ),
            
          ),
        ),
      ),
    );

Widget defaultImagePicker({
  ImageProvider<Object> backgroundImage,
  Function onPressed,
}) =>
    Stack(
      fit: StackFit.loose,
      overflow: Overflow.visible,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        CircleAvatar(
          backgroundColor: KprimaryColor,
          backgroundImage: backgroundImage,
          radius: 80,
        ),
        Positioned(
          bottom: -15,
          child: CircleAvatar(
            backgroundColor: Color(0xffF6F6F6),
            child: IconButton(
              icon: Icon(
                FontAwesomeIcons.camera,
                color: Colors.grey,
              ),
              onPressed: onPressed,
            ),
          ),
        ),
      ],
    );

Widget defaultDropdown({
  List<DropdownMenuItem<int>> items,
  String texthint,
  Function onChanged,
  Function validator,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Color(0xffECECEC),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonFormField(
            
            validator:validator,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
            elevation: 2,
            hint: Text(texthint),
            isExpanded: true,
            items: items,
            onChanged: onChanged,
          ),
        ),
      ),
    );
