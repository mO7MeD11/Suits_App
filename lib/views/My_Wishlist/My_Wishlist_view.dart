import 'package:flutter/material.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/models/my_wish_model.dart';
import 'package:suits_app/views/My_Wishlist/item_details.dart';

class MyWishlistView extends StatefulWidget {
  const MyWishlistView({super.key});

  @override
  State<MyWishlistView> createState() => _MyWishlistViewState();
}

class _MyWishlistViewState extends State<MyWishlistView> {
  final List<String> sections = const [
    'All',
    'Blazar',
    'Shirt',
    'Pant',
    'Shoes',
  ];

  final List<MyWishModel> myWishModel = const [
    MyWishModel(
      image: 'assets/0317b85d35cd30a6b72a667e3edb84b3c0a89b15.jpg',
      title: 'Classic Blazer',
      price: '\$83.97',
      rate: '4.9',
      description: 'Leather classic jacket with zipper details',
    ),
    MyWishModel(
      image: 'assets/0c559bc3e9ecc24fc408a4ca052d59287b99142d.jpg',
      title: 'Casual Shirt',
      price: '\$45.50',
      rate: '4.7',
      description: 'Casual cotton pants with side pockets',
    ),
    MyWishModel(
      image: 'assets/2e53f1b1f8f619d8c0d4ed8a6afc34ca9e78341d.jpg',
      title: 'Leather Shoes',
      price: '\$120.00',
      rate: '4.8',
      description: 'Formal white shirt with slim fit design',
    ),
    MyWishModel(
      image: 'assets/6c8c168b4ae7c5b0cebcd5784c810bad430a4e34.jpg',
      title: 'Women Dress',
      price: '\$99.99',
      rate: '4.6',
      description: 'Sport running shoes with breathable mesh',
    ),
    MyWishModel(
      image: 'assets/7c15a747e850a751fcebf72b257933be9715721e.jpg',
      title: 'Summer Jacket',
      price: '\$70.25',
      rate: '4.5',
      description: 'Denim blue jeans with ripped style',
    ),
    MyWishModel(
      image: 'assets/9ec379e900c2fe04c1cf2f60b23966c780fd746f.jpg',
      title: 'Sneakers',
      price: '\$65.00',
      rate: '4.8',
      description: 'cotton sweat shirt with a text point 5  ',
    ),
  ];

  int isSelected = 0;

  late List<bool> itemselected = List.filled(myWishModel.length, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffF4F5F7),
        scrolledUnderElevation: 0,
        title: Text(
          'My Wishlist',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(sections.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      isSelected = index;
                      setState(() {});
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected == index
                            ? kPcolor
                            : Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        sections[index],

                        style: TextStyle(
                          color: isSelected == index
                              ? Colors.white
                              : Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                itemCount: myWishModel.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetails(model: myWishModel[index]),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Image.asset(
                                myWishModel[index].image,
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                right: 12,
                                top: 12,
                                child: Container(
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      itemselected[index] =
                                          !itemselected[index];
                                      setState(() {});
                                    },
                                    icon: Icon(
                                      Icons.favorite,
                                      color: itemselected[index]
                                          ? Colors.red
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            myWishModel[index].title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.star, color: Colors.amber),
                          Text(myWishModel[index].rate),
                        ],
                      ),
                      Text(
                        myWishModel[index].price,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
