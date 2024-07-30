// import 'package:flutter/material.dart';
// import 'package:with_api/models/second/top_level_data.dart';
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
//         title: Text("Working with API Example 2"),
//       ),
//       body: FutureBuilder<TopLevelData>(
//         future: Repository.getMemes(),
//         builder: (BuildContext context, AsyncSnapshot<TopLevelData> snapshot) {
//           if (snapshot.hasData) {
//             var memes = snapshot.data!.data.memes;
//             return ListView(
//               children: List.generate(memes.length, (currentIndex) {
//                 return Container(
//                   margin: EdgeInsets.all(10),
//                   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(16),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           spreadRadius: 6,
//                           blurRadius: 5,
//                           offset: Offset(1, 3),
//                           color: Colors.grey.shade300,
//                         ),
//                       ]),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                           width: MediaQuery.of(context).size.width,
//                           height: 400,
//                           child: Image.network(memes[currentIndex].url)),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             "ID",
//                           ),
//                           Text(
//                             memes[currentIndex].id,
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text("Name"),
//                           Text(memes[currentIndex].name)
//                         ],
//                       )
//                     ],
//                   ),
//                 );
//               }),
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
