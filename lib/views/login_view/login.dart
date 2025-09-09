import 'package:flutter/material.dart';
import 'package:suits_app/views/Home_Views/home.dart';
import 'package:suits_app/views/signup_view/signup.dart';
import 'package:suits_app/widgets/custom_Social_Button.dart';
import 'package:suits_app/widgets/custom_button.dart';
import 'package:suits_app/widgets/custom_text_form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final formkye = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
      body: Center(
        child: Form(
          key: formkye,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Hi Welcome back, you’ve been missed',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                SizedBox(height: 30),
                CustomTextForm(
                  hint: 'enter your email',
                  icon: Icon(Icons.email),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextForm(
                  hint: 'enter your password',
                  icon: Icon(Icons.lock),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'password is required';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),

                CustomButton(
                  onPressed: () {
                    if (formkye.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Login Successful')),
                      );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      );
                    }
                  },
                  text: 'Login',
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff717784),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return Signup();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CustomSocialButton(
                  icon: Icon(Icons.abc),
                  text: 'Sign in with google',
                ),
                SizedBox(height: 20),
                CustomSocialButton(
                  icon: Icon(Icons.apple),
                  text: 'Sign in with Apple',
                ),
                SizedBox(height: 20),
                CustomSocialButton(
                  icon: Icon(Icons.facebook, color: Colors.blue),
                  text: 'Sign in with Facebook',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
