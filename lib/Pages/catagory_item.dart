import 'package:flutter/material.dart';


class CategorySelector extends StatefulWidget {
  @override

  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
 
  int selectedIndex = 0;

  final List<String> categories = ["All", "Combos", "Sliders", "Classics", "Old", "Sliders"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          
          height: 50, 
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            padding: EdgeInsets.symmetric(horizontal: 10),
            itemBuilder: (context, index) {
              bool isSelected = selectedIndex == index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index; 
                  });
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  decoration: BoxDecoration(
                  
                    color: isSelected ? Colors.red : Colors.grey[200],
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: isSelected
                        ? [BoxShadow(color: Colors.black26, blurRadius: 4, offset: Offset(0, 2))]
                        : [],
                  ),
                  child: Center(
                    child: Text(
                      categories[index],
                      style: TextStyle(
                   
                        color: isSelected ? Colors.white : Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
