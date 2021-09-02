import 'package:flutter/material.dart';

Widget buildTextFormField(String text, IconData prefix) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        style: TextStyle(
          color: Colors.blue,
        ),
        decoration: InputDecoration(
            hintText: text,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 0.0,
              ),
            ),
            prefixIcon: Icon(prefix,color: Colors.grey[200],)),
      ),
    );
