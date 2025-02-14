// ignore_for_file: prefer_const_constructors

import 'package:apirashika/controllers/post_controller.dart';
import 'package:apirashika/pages/post_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFFF2E8C6),
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFF952323),
        centerTitle: true,
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: postController.postList.length,
          itemBuilder: (context, index) =>
              PostView(post: postController.postList[index]),
        );
      }),
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: Home(),
  ));
}
