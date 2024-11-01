import 'package:chef_shop_lecture/view/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class Mypage extends StatelessWidget {
   Mypage({super.key});

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chef Shop'),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.view_list_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Container(
          child: Padding(
        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Obx(() => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return ProductTile(
                controller.productList[index],
              );
            },
            itemCount: controller.productList.length,
          ),
        ),
      )),
    );
  }
}
