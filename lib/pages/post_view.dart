// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:apirashika/controllers/post_controller.dart';
import 'package:apirashika/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostView extends StatelessWidget {
  final PostController postController = Get.put(PostController());
  final PostModel post;
  bool allowDeletion = false;

  PostView({required this.post, super.key, this.allowDeletion = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.network(
              post.id,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.url,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFFA73121),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
