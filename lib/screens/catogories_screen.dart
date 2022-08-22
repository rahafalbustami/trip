import 'package:flutter/material.dart';
import '../app_data.dart';
import '../widgets/category_item.dart';

class catogoriesscreen extends StatelessWidget {
  const catogoriesscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('دليل السياحي'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map((categorydata) {
          print(categorydata.id);
          return categoryitem(
            categorydata.id,
            categorydata.title,
            categorydata.imageUrl,
          );
        }).toList(),
      ),
    );
  }
}
