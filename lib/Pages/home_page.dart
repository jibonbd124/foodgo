import 'package:flutter/material.dart';
import 'package:foodgo/Pages/Page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page1(),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFEF2A39),
        shape: CircularNotchedRectangle(), // Round Gap here----
        notchMargin: 8.0,
        // Gap retion---------
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Image.asset('assets/images/home.png'),
              color: _currentIndex == 0 ? Colors.white : Colors.white,
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/user.png'),
              color: _currentIndex == 1 ? Colors.white : Colors.white,
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            SizedBox(width: 40), // this is gap-----------------------------
            IconButton(
              icon: Image.asset('assets/images/comment.png'),
              color: _currentIndex == 2 ? Colors.white : Colors.white,
              onPressed: () {
                _onItemTapped(2);
              },
            ),
            IconButton(
              icon: Image.asset('assets/images/heart.png'),
              color: _currentIndex == 3 ? Colors.white : Colors.white,

              onPressed: () {
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),

      extendBody: true,
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          backgroundColor: Color(0xFFEF2A39),

          onPressed: () {},
          shape: CircleBorder(),
          elevation: 15,
          child: Image.asset('assets/images/plus.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
