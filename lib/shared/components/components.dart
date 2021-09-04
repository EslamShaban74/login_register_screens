import 'package:flutter/material.dart';



Widget buildTextFormField(
        {String text, IconData prefix, TextEditingController controller,FocusNode focusNode}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: TextStyle(
          color: Colors.blue,
        ),
        decoration: InputDecoration(
            hintText: text,
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 0.0,
              ),
            ),
            prefixIcon: Icon(
              prefix,
              color: focusNode.hasFocus || controller.text != ''
                  ? Colors.blue
                  : Colors.grey[300],
              //color: Colors.grey[200],
            )),
      ),
    );

Widget buildDefaultButton(String text, Color color) => Container(
      width: 200.0,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(30.0)),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
