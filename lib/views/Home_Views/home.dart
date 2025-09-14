import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/models/category_model.dart';
import 'package:suits_app/views/My_Wishlist/My_Wishlist_view.dart';
import 'package:suits_app/widgets/custom_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<CategoryModel> allCategory = const [
    CategoryModel(image: 'assets/Mask group (1).png', name: 'Blazar'),
    CategoryModel(image: 'assets/suit (1) 1.png', name: 'Shirt'),
    CategoryModel(image: 'assets/Mask group (2).png', name: 'Men Shoes'),
    CategoryModel(image: 'assets/Mask group (3).png', name: 'Women Shoes'),
    CategoryModel(image: 'assets/suit (1) 1.png', name: 'Shirt'),
  ];

  final List<String> sections = const [
    'All',
    'Newest',
    'Popular',
    'Men',
    'women',
  ];
  int isSelected = 0;

  List<String> image = [
    'assets/0c559bc3e9ecc24fc408a4ca052d59287b99142d.jpg',
    'assets/2e53f1b1f8f619d8c0d4ed8a6afc34ca9e78341d.jpg',
    'assets/6c8c168b4ae7c5b0cebcd5784c810bad430a4e34.jpg',
    'assets/7c15a747e850a751fcebf72b257933be9715721e.jpg',
    'assets/9ec379e900c2fe04c1cf2f60b23966c780fd746f.jpg',
    'assets/0317b85d35cd30a6b72a667e3edb84b3c0a89b15.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.grey),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.favorite),
              color: Colors.grey,
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyWishlistView()),
                );
              },
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: "Home",
          ),
        ],
      ),
      backgroundColor: Color(0xffF4F5F7),
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Color(0xffF4F5F7),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Hello Mohamed',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
        actions: [
          Container(
            margin: EdgeInsetsGeometry.only(right: 10),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Image.asset(
                'assets/1e358f82d3f1647e4b22caca2e70c0973ef744e6.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Color(0xffFFFFFF),
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 30),
                          Text(
                            'New Collection',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Disscount 50% for \n the first transaction',

                            style: TextStyle(
                              color: Color(0xffA1A8B0),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          SizedBox(
                            width: 170,
                            height: 40,
                            child: CustomButton(
                              onPressed: () {},
                              text: 'Shop Now',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Image.asset('assets/Choosing clothes-bro 1.png'),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(allCategory.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: kPcolor),
                                  color: Color(0xffFFFFFF),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Image.asset(allCategory[index].image),
                              ),
                              SizedBox(height: 10),
                              Text(
                                allCategory[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                Text(
                  'Flash Sale',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(5, (index) {
                        return GestureDetector(
                          onTap: () {
                            isSelected = index;
                            setState(() {});
                          },
                          child: Container(
                            margin: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: isSelected == index
                                  ? kPcolor
                                  : Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),

                            child: Text(
                              sections[index],
                              style: TextStyle(
                                color: isSelected == index
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: image.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    childAspectRatio: 0.85,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage(image[index])),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
