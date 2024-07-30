// import 'package:flutter/material.dart';
// import 'package:with_api/models/third/story_entity/top_level.dart';
// import 'package:with_api/repository/repository.dart';
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Working with API Example 3"),
//       ),
//       body: FutureBuilder<TopLevel>(
//         future: Repository.getStories(),
//         builder: (BuildContext context, AsyncSnapshot<TopLevel> snapshot) {
//           if (snapshot.hasData) {
//             var data = snapshot.data!; // TopLevel
//             return Container(
//               margin: EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Status"),
//                       Text(data.status),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text("Copyright"),
//                       SizedBox(width: 10),
//                       Expanded(child: Text(data.copyright)),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Count"),
//                       Text(data.section),
//                     ],
//                   ),
//                   Expanded(
//                       child: ListView.builder(
//                     itemCount: data.results.length,
//                     itemBuilder: (BuildContext context, index) {
//                       var item = data.results[index];
//                       return Container(
//                         padding: EdgeInsets.all(16),
//                         margin: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                             boxShadow: [
//                               BoxShadow(
//                                 blurRadius: 10,
//                                 color: Colors.grey.shade300,
//                                 spreadRadius: 10,
//                                 offset: const Offset(1, 5),
//                               )
//                             ],
//                             borderRadius: BorderRadius.circular(12),
//                             color: Colors.white),
//                         child: Column(
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text("Title"),
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Expanded(child: Text(item.title))
//                               ],
//                             )
//                           ],
//                         ),
//                       );
//                     },
//                   ))
//                 ],
//               ),
//             );
//           } else if (snapshot.hasError) {
//             return Center(child: Text("Error ocurred"));
//           } else {
//             return Container(
//               child: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
