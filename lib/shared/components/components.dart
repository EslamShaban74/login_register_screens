import 'package:flutter/material.dart';

FocusNode focusNode = FocusNode();

Widget buildTextFormField(String text, IconData prefix) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        autofocus: true,
        focusNode: focusNode,
        style: TextStyle(
          color: Colors.blue,
        ),
        decoration: InputDecoration(
            hintText: text,
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
