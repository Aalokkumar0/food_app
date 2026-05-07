import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //  row mai aane bale items
          crossAxisSpacing: 20, // Column ke bich ka space (gap)
          mainAxisSpacing: 20, // row ke bich ka space (gap)
        ),
        children: [
          for (int i = 1; i < 21; i++)
            Container(
              color: Colors.green,
              child: Center(child: Text("grid cell $i ")),
            ),
        ],
      ),
    );
  }
}
