import 'package:flutter/material.dart';
import 'package:suits_app/views/Home_Views/home.dart';
import 'package:suits_app/views/onboarding/GetStartedScreen.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  List image = [
    'assets/9ec379e900c2fe04c1cf2f60b23966c780fd746f.jpg',
    'assets/f16ef25ec632f77379efeeb74eb95eff5bebefd5.jpg',
    'assets/7c15a747e850a751fcebf72b257933be9715721e.jpg',
  ];

  List<Map<String, String>> words = [
    {
      'title': 'Welcome To \nFashion',
      'subtitle':
          'Discover the latest trends and exclusive styles from our top designers',
    },
    {
      'title': 'Explore & Shop',
      'subtitle':
          'Discover a wide range of fashion categories, browse new arrivals and shop your favourites',
    },
    {'title': 'Hi,Shop Now', 'subtitle': ''},
  ];

  int isSelected = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            itemCount: image.length,
            controller: controller,
            onPageChanged: (value) {
              isSelected = value;
              setState(() {});
            },
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                width: double.infinity,
                height: double.infinity,
                image[index],
                fit: BoxFit.cover,
              );
            },
          ),
          Positioned(
            top: 40,
            right: 20,
            child: isSelected != 2
                ? OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return GetStartedScreen();
                          },
                        ),
                      );
                    },

                    style: OutlinedButton.styleFrom(side: BorderSide(width: 1)),
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  )
                : SizedBox(),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  words[isSelected]['title']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  words[isSelected]['subtitle']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AbsorbPointer(
                      absorbing: isSelected == 0 ? true : false,
                      child: Opacity(
                        opacity: isSelected == 0 ? 0 : 1,
                        child: OutlinedButton(
                          onPressed: () {
                            if (isSelected > 0) {
                              controller.previousPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.linear,
                              );
                            }
                          },
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(20, 55),
                            shape: CircleBorder(),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    Spacer(),
                    ...List.generate(3, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: AnimatedContainer(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: isSelected == index
                                ? Color(0xffDD8560)
                                : Colors.grey[200],
                          ),
                          width: isSelected == index ? 25 : 18,
                          height: isSelected == index ? 25 : 18,
                          duration: Duration(milliseconds: 100),
                        ),
                      );
                    }),
                    Spacer(),
                    OutlinedButton(
                      onPressed: () {
                        if (isSelected < 2) {
                          controller.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.linear,
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return GetStartedScreen();
                              },
                            ),
                          );
                        }
                        setState(() {});
                      },
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(20, 55),
                        shape: CircleBorder(),
                        backgroundColor: Color(0xffDD8560),
                      ),
                      child: Icon(Icons.arrow_forward_ios, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
