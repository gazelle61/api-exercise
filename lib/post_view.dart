// // ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// import 'package:apirashika/controllers/post_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class PostView extends StatelessWidget {
//   final PostController postController = Get.put(PostController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFDCE4C9),
//         title: Text(
//           'API ANJING',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Obx(() {
//         if (postController.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         }
//         return ListView.builder(
//           padding: EdgeInsets.all(10),
//           itemCount: postController.postList.length,
//           itemBuilder: (context, index) {
//             final post = postController.postList[index];
//             return Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               elevation: 5,
//               child: ListTile(
//                 contentPadding: EdgeInsets.all(12),
//                 leading: ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.network(
//                     post.url,
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 title: Text(
//                   'Dog ID: ${post.id}',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 subtitle: Text(
//                   'goreng goreng goreng',
//                   style: TextStyle(color: Colors.grey, fontSize: 14),
//                 ),
//               ),
//             );
//           },
//         );
//       }),
//     );
//   }
// }
