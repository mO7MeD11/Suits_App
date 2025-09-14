import 'package:flutter/material.dart';
import 'package:suits_app/const.dart';
import 'package:suits_app/models/my_wish_model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.model});
  final MyWishModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Image.asset(
            model.image,
            width: double.infinity,
            height: 450,
            fit: BoxFit.cover,
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Famale Style",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        const Spacer(),
                        const Icon(Icons.star, color: Colors.amber, size: 20),
                        const SizedBox(width: 4),
                        Text(model.rate),
                      ],
                    ),
                    const SizedBox(height: 10),

                    Text(
                      model.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),

                    Text(
                      model.price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown,
                      ),
                    ),
                    const SizedBox(height: 20),

                    const Text(
                      "Product Details",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      model.description,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Quality",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove_circle_outline),
                            ),
                            const Text("1", style: TextStyle(fontSize: 16)),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add_circle_outline),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const Divider(),

                    const Text(
                      "Color:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _colorDot(Colors.green),
                        _colorDot(Colors.black),
                        _colorDot(Colors.red),
                        _colorDot(Colors.grey),
                      ],
                    ),

                    const SizedBox(height: 20),

                    const Text(
                      "Size:",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        _sizeBox("S"),
                        _sizeBox("M"),
                        _sizeBox("L"),
                        _sizeBox("XL"),
                      ],
                    ),

                    const SizedBox(height: 30),

                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(Icons.favorite_border),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPcolor,
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              "Add To Cart",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget _colorDot(Color color) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey.shade300),
      ),
    );
  }

  static Widget _sizeBox(String size) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(size, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
