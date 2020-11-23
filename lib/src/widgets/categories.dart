import 'package:flutter/material.dart';
import 'package:food_app/src/models/category.dart';

import 'commons.dart';
import 'custom_text.dart';

List<Category> categoryList = [
  Category(name: "salad", image: "salad.png"),
  Category(name: "Fast Food", image: "sandwich.png"),
  Category(name: "steak", image: "steak.png"),
  Category(name: "Bear", image: "pint.png"),
  Category(name: "Sea food", image: "fish.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          itemCount: categoryList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: red[50],
                            offset: Offset(1, 1),
                            blurRadius: 4),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Image.asset(
                        "images/${categoryList[index].image}",
                        width: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    text: categoryList[index].name,
                    size: 14,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
