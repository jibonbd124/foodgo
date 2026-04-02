import 'package:flutter/material.dart';
import 'package:foodgo/Pages/catagory_item.dart';
import 'package:foodgo/Pages/items_page.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _controller = TextEditingController();
  // BurgerList for Text----------------------------------------------------------

  final List<Map<String, dynamic>> burgerList = [
    {
      "name": "Cheeseburger",
      "shop": "Wendy's Burger",
      "image": "assets/images/burger1.png",
      "rating": "4.9",
    },
    {
      "name": "Hamburger",
      "shop": "Veggie Burger",
      "image": "assets/images/burger2.png",
      "rating": "4.8",
    },
    {
      "name": "Chicken Burger",
      "shop": "Burger King",
      "image": "assets/images/burger3.png",
      "rating": "4.7",
    },
    {
      "name": "Chicken Burger",
      "shop": "Burger King",
      "image": "assets/images/burger2.png",
      "rating": "4.7",
    },
     {
      "name": "Chicken Burger",
      "shop": "Burger King",
      "image": "assets/images/burger3.png",
      "rating": "4.7",
    },
    {
      "name": "Chicken Burger",
      "shop": "Burger King",
      "image": "assets/images/burger2.png",
      "rating": "4.7",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      child: Image.asset(
                        'assets/images/Foodgo.png',
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        'assets/images/image8.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Order your favourite food!',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Color(0xFF6A6A6A)),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    //  Search Bar ------------------------===================-----------------
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black87,
                            ),
                            hintText: 'Search',
                            hintStyle: TextStyle(color: Colors.black54),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(width: 15), // Spacher --------------------

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFEF2A39),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.tune, color: Colors.white),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: double.infinity,

                  child: CategorySelector(),
                ),

                SizedBox(height: 50,),
                SizedBox(
                  height: 580,
                  width: double.infinity,

                  child: GridView.builder(
                    scrollDirection: Axis.vertical, //
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: burgerList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: FoodCard(
                          assetPath: burgerList[index]['image'],
                          title: burgerList[index]['name'],
                          subtitle: burgerList[index]['shop'],
                          rating: burgerList[index]['rating'],
                          onTap: () {
                            print("${burgerList[index]['name']} clicked!");
                          },
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // প্রতি লাইনে ২টা কার্ড
                      crossAxisSpacing: 15, // পাশাপাশি কার্ডের গ্যাপ
                      mainAxisSpacing: 15, // উপর-নিচ কার্ডের গ্যাপ
                      childAspectRatio: 0.75,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
