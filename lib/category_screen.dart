import 'package:flutter/material.dart';
import 'package:food_app/data/category_data.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          "food Category ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //  row mai aane bale items
          crossAxisSpacing: 20, // Column ke bich ka space (gap)
          mainAxisSpacing: 20, // row ke bich ka space (gap)
        ),
        children: List.generate(category.length, (index) {
          return Container(
            padding: EdgeInsets.all(16),
            color: category[index].color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      category[index].id,
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(category[index].title),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
