import 'package:flutter/material.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/widgets/custom_button.dart';
import 'package:suits_app/widgets/custom_text_form.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked = false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),

      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              CustomTextForm(
                icon: Icon(Icons.person),
                hint: 'Enter your name',
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'value is required ';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              CustomTextForm(
                icon: Icon(Icons.email),
                hint: 'Enter your email',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'value is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              CustomTextForm(
                icon: Icon(Icons.lock),
                hint: 'Enter your password',
                validator: (p0) {
                  if (p0 == null || p0.isEmpty) {
                    return 'value is required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Checkbox(
                      //activeColor: Color(0xffF9FAFB),
                      value: isChecked,
                      onChanged: (v) {
                        isChecked = v!;
                        setState(() {});
                      },
                      side: BorderSide(width: .5, strokeAlign: 15),
                    ),

                    Text.rich(
                      //textAlign: TextAlign.center,
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'I agree to the medidoc  ',
                            style: TextStyle(
                              color: Color(0xff3B4453),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Service ',
                            style: TextStyle(
                              color: kPcolor,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: 'and\n',
                            style: TextStyle(
                              color: Color(0xff3B4453),
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: kPcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('success')));
                  }
                },
                text: 'Sign up',
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'already have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff717784),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Login ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
