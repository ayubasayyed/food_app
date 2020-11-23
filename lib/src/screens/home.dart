import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/bottom_navigation_icons.dart';
import 'package:food_app/src/widgets/categories.dart';
import 'package:food_app/src/widgets/commons.dart';
import 'package:food_app/src/widgets/custom_text.dart';
import 'package:food_app/src/widgets/featured_products.dart';
import 'package:food_app/src/widgets/smallButton.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CustomText(
                    text: "What are you looking for ?",
                    size: 18,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                        icon: Icon(Icons.notifications_none), onPressed: () {}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                        color: grey[300], offset: Offset(1, 1), blurRadius: 4),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and restaurants",
                      border: InputBorder.none,
                    ),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CustomText(
                text: "Featured",
                color: grey,
                size: 20,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Popular" , color: grey, size: 18,),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/food.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallButton(Icons.favorite),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(Icons.star, color: Colors.yellow[900], size: 20,),
                              ),
                              CustomText(text: "4.5"),
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,

                              colors: [
                                Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),
                              ]
                            ),
                          ),
                        ),
                      ),
                    ),
                ),
                Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(12, 11, 11, 11),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "PanCakes \n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: white),),
                                  TextSpan(text: "by: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: white),),
                                  TextSpan(text: "Pizza Hut", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white),)
                                ],
                                style: TextStyle(color: black),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: RichText(text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "\₹ 121 \n", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 22, color: white)
                                ),
                              ],
                            ),),
                          )

                        ],
                      ),
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavIcon(text: "home", image: "home.png"),
            BottomNavIcon(text: "near by", image: "target.png",),
            BottomNavIcon(text: "cart", image: "shopping-bag.png"),
            BottomNavIcon(text: "account", image: "avatar.png",),

          ],
        ),
      ),
    );
  }
}
