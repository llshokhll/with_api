import 'package:flutter/material.dart';
import 'package:with_api/models/fourth/my_top_level_data.dart';
import 'package:with_api/repository/repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working with API Example 3"),
      ),
      body: FutureBuilder<MyTopLevelData>(
        future: Repository.getMyTopLevelData(),
        builder:
            (BuildContext context, AsyncSnapshot<MyTopLevelData> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!; // TopLevel
            return Container(
                margin: EdgeInsets.all(16),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(data.myMetadata.identifier),
                      Text(data.myMetadata.language),
                      Text(data.myMetadata.creator),
                      Text(data.myMetadata.mediatype),
                      Text(data.myMetadata.ppi),
                      Text(data.myMetadata.repubState),
                    ],
                  ),
                ));
          } else if (snapshot.hasError) {
            return Center(child: Text("Error ocurred"));
          } else {
            return Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
