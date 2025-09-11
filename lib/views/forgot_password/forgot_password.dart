import 'package:flutter/material.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/widgets/custom_button.dart';
import 'package:suits_app/widgets/custom_text_form.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final formKye = GlobalKey<FormState>();
  bool emailSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      body: SafeArea(
        child: Form(
          key: formKye,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Forgot Your Password?',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                ),
              ),
              SizedBox(height: 11),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Enter your email or your phone number, we\n will send you confirmation code',
                  style: TextStyle(
                    color: Color(0xffA1A8B0),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 17),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          emailSelected = true;
                          setState(() {});
                        },
                        child: Text(
                          'Email',
                          style: TextStyle(
                            color: emailSelected ? kPcolor : Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          emailSelected = false;
                          setState(() {});
                        },
                        child: Text(
                          'Phone',
                          style: TextStyle(
                            color: emailSelected ? Colors.black : kPcolor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              CustomTextForm(
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return 'filed is required';
                  }
                  return null;
                },
                icon: emailSelected
                    ? Icon(Icons.email, color: Colors.red)
                    : Icon(Icons.phone, color: Colors.red),
                hint: emailSelected ? 'enter your email' : 'enter your phone',
              ),
              SizedBox(height: 32),
              CustomButton(
                onPressed: () {
                  formKye.currentState!.validate();
                },
                text: 'Reset Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
