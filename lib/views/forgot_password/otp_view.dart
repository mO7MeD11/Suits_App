import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/widgets/custom_button.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Enter Verification Code',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ),
            SizedBox(height: 11),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Enter code that we have sent to your \nnumber 08528188*** ',
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
              child: PinCodeTextField(
                appContext: context,
                length: 4,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  print(value);
                },
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(20),
                  fieldHeight: 70,
                  fieldWidth: 70,
                  inactiveFillColor: Color(0xffFFFFFF),
                  selectedFillColor: Color(0xffFFFFFF),
                  activeFillColor: Color(0xffFFFFFF),
                  inactiveColor: Colors.transparent,
                  selectedColor: kPcolor,
                  activeColor: Colors.transparent,
                ),
                enableActiveFill: true,
              ),
            ),
            SizedBox(height: 32),
            CustomButton(onPressed: () {}, text: 'Verify'),
            SizedBox(height: 24),
            Center(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Didn’t receive the code?',
                      style: TextStyle(color: Color(0xff717784)),
                    ),
                    TextSpan(
                      text: ' Resend',
                      style: TextStyle(color: kPcolor),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
