import 'package:flutter/material.dart';
import 'package:food_app/src/models/products.dart';

import 'commons.dart';
import 'custom_text.dart';

List<Product> productList = [
  Product(image: "1.jpg", name: "Creals", price: 400, rating: 4.2, wishList: true, vendor: "4.7"),
  Product(image: "5.jpg", name: "Taccos", price: 400, rating: 4.7, wishList: true, vendor: "4.7"),
  Product(image: "5.jpg", name: "Taccos", price: 400, rating: 4.7, wishList: true, vendor: "4.7"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 240,
      child: ListView.builder(
          itemCount: productList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 240,
                  width: 200,
                  decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: red,
                        blurRadius: 4,
                        offset: Offset(7, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "images/${productList[index].image}",
                        height: 140,
                        width: 140,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: productList[index].name,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: grey[300],
                                      offset: Offset(1, 1),
                                      blurRadius: 4),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: productList[index].wishList ? Icon(
                                  Icons.favorite,
                                  color: red,
                                  size: 18,
                                ) : Icon(
                                  Icons.favorite,
                                  color: red,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: CustomText(text: productList[index].rating.toString() , color: grey, size: 14,),
                              ),
                              Icon(Icons.star, color: red, size: 16,),
                              Icon(Icons.star, color: red, size: 16,),
                              Icon(Icons.star, color: red, size: 16,),
                              Icon(Icons.star, color: red, size: 16,),
                              Icon(Icons.star, color: grey, size: 16,),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: CustomText(text: "${productList[index].price}₹", weight: FontWeight.bold,),
                          )
                        ],
                      ),
                    ],
                  )),
            );
          }),
    );
  }
}
