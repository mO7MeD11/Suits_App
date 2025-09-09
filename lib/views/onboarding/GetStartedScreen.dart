import 'package:flutter/material.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/views/login_view/login.dart';
import 'package:suits_app/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,

            child: Stack(
              children: [
                Positioned(
                  left: 20,
                  top: 80,
                  child: Container(
                    height: 370,
                    width: 137,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/2e53f1b1f8f619d8c0d4ed8a6afc34ca9e78341d.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 60,
                  child: Container(
                    width: 137,
                    height: 214,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/63b6a4bbf68dd6acac7e0dfc55997d3313a2ae5d.jpg',
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  top: 300,

                  child: Container(
                    decoration: BoxDecoration(),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/37ed5f5e13184edad10b04ca0aecffd1bc860861.jpg',
                        width: 141,
                        height: 133,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text.rich(
            textAlign: TextAlign.center,

            TextSpan(
              children: [
                TextSpan(
                  text: 'The ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: 'Suits App ',
                  style: TextStyle(
                    color: kPcolor,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: 'that \n Makes Your Look Your Best',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            '  Everything you need in the world\n of fashion, old and new ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xff727272),
            ),
          ),
          SizedBox(height: 40),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
              );
            },
            text: 'Get started',
          ),
        ],
      ),
    );
  }
}
