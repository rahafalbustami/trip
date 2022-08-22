import 'dart:convert';

import 'package:flutter/material.dart';

class categorytripsscreen extends StatelessWidget {
  //final String categoryId;
  //final String categoryTitle;

  //categorytripsscreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String categoryId = routeArgument["id"];
    String categoryTitle = routeArgument["title"];
    //final s = jsonDecode(routeArgument)
   // print(routeArgument.);
    return Scaffold(
      appBar: AppBar(
              title: Text(categoryId),
          ),
      body: Center(
        child: Text("قائمه برحلات التصنيف"),
      ),
    );
  }
}
