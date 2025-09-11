import 'package:flutter/material.dart';
import 'package:suits_app/views/login_view/login.dart';
import 'package:suits_app/views/login_view/success.dart';
import 'package:suits_app/widgets/custom_button.dart';
import 'package:suits_app/widgets/custom_text_form.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  //is Password Visible Field1
  bool isSelected1 = false;
  //is Password Visible Field1
  bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Create New Password',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ),
            SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Create your new password to login ',
                style: TextStyle(
                  color: Color(0xffA1A8B0),
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 32),

            CustomTextForm(
              showText: isSelected2,
              hint: 'Enter your password',
              prefixIconicon: Icon(Icons.lock, color: Color(0xffA1A8B0)),
              suffixicon: IconButton(
                onPressed: () {
                  isSelected2 = !isSelected2;
                  setState(() {});
                },
                icon: isSelected2
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
                color: Color(0xffA1A8B0),
              ),
            ),
            SizedBox(height: 11),
            CustomTextForm(
              showText: isSelected1,
              hint: 'Enter your password',
              prefixIconicon: Icon(Icons.lock, color: Color(0xffA1A8B0)),
              suffixicon: IconButton(
                icon: isSelected1
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off),
                color: Color(0xffA1A8B0),
                onPressed: () {
                  isSelected1 = !isSelected1;
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SuccessDialog(
                      title: 'Success',
                      description:
                          'Your account has been successfully registered',
                      buttonText: 'Login',
                      goto: Login(),
                    );
                  },
                );
              },
              text: 'Create Password',
            ),
          ],
        ),
      ),
    );
  }
}
