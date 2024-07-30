// import 'package:flutter/material.dart';
// import 'package:with_api/models/first/user_data.dart';
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
//     return
//         //   Scaffold(
//         //   appBar: AppBar(
//         //     title: Text("Linkify"),
//         //   ),
//         //   body: Container(
//         //     child: Center(
//         //         child: Linkify(
//         //       text: "Made by https://cretezy.com",
//         //       options: LinkifyOptions(humanize: true),
//         //       onOpen: (link) async {
//         //         await launchUrl(Uri.parse(link.url));
//         //       },
//         //     )),
//         //   ),
//         // );
//
//         Scaffold(
//       appBar: AppBar(
//         title: Text("Working with API Example 1"),
//       ),
//       body: FutureBuilder<UserData>(
//         future: Repository.getUserData(),
//         builder: (BuildContext context, AsyncSnapshot<UserData> snapshot) {
//           if (snapshot.hasData) {
//             var data = snapshot.data!;
//             return Container(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Name"),
//                       Text(data.name),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Age"),
//                       Text(data.age.toString()),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("Count"),
//                       Text(data.count.toString()),
//                     ],
//                   )
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
