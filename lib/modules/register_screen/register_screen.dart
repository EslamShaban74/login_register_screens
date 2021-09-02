import 'package:flutter/material.dart';
import 'package:login_register/shared/components/components.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white24,
      ),
      body: Column(
        children: [
          const SizedBox(height: 25.0),
          Center(
            child: Text(
              'Let\'s Get Started!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Create an account to Q Allure to get all features ',
            style: Theme.of(context).textTheme.caption.copyWith(fontSize: 15.0),
          ),
          const SizedBox(height: 40.0),
          buildTextFormField('Name', Icons.person),
          const SizedBox(height: 20.0),
          buildTextFormField('Email', Icons.email_outlined),
          const SizedBox(height: 20.0),
          buildTextFormField('Phone', Icons.phone_android_sharp),
          const SizedBox(height: 20.0),
          buildTextFormField('Password', Icons.lock_outline),
          const SizedBox(height: 20.0),
          buildTextFormField('Confirm Password', Icons.lock_outline),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
