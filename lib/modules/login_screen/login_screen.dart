import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:login_register/modules/register_screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Image(
              height: 200.0,
              width: double.infinity,
              image: NetworkImage(
                  'https://image.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg'),
            ),
            Text(
              'Welcome back!',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Log in to your existing account of Q Allure',
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(fontSize: 15.0),
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                controller: emailController,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
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
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.person_outline,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: TextFormField(
                controller: passwordController,
                style: TextStyle(
                  color: Colors.blue,
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
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
                      width: 2.0,
                    ),
                  ),
                  prefixIcon: Icon(

                    Icons.lock_outline,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    child: Text(
                      'Forgot Password?',
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(30.0)),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40.0),
            Text(
              'Or connect using',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(color: Colors.grey[350]),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 140.0,
                  decoration: BoxDecoration(
                      color: HexColor("#3b5998"),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const SizedBox(width: 5.0),
                        Icon(
                          Icons.facebook_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Facebook',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: 140.0,
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        const SizedBox(width: 12.0),
                        Image(
                          image: NetworkImage(
                              'https://img.icons8.com/ios-glyphs/30/000000/google-logo--v1.png'),
                          height: 30.0,
                          width: 25,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'Google',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don\'t have an account?'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return RegisterScreen();
                    }));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
