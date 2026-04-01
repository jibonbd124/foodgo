import 'package:flutter/material.dart';
import 'package:foodgo/Pages/items_page.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    child: Image.asset('assets/images/Foodgo.png', color: Colors.black),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Image.asset('assets/images/image8.png', fit: BoxFit.cover),
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
                          prefixIcon: Icon(Icons.search, color: Colors.black87),
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
              Itempage(),
            ],
          ),
          
        ),
      ),
    );
  }
}
