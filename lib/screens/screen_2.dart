import 'package:flutter/material.dart';
import 'package:with_api/models/second/top_level_data.dart';
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
        title: Text("Working with API Example 2"),
      ),
      body: FutureBuilder<TopLevelData>(
        future: Repository.getMemes(),
        builder: (BuildContext context, AsyncSnapshot<TopLevelData> snapshot) {
          if (snapshot.hasData) {
            var memes = snapshot.data!.data.memes;
            var data = snapshot.data!;
            return Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Status'),
                        Text(data.status.toString()),
                      ],
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemBuilder: (BuildContext context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 6,
                                blurRadius: 5,
                                offset: Offset(1, 3),
                                color: Colors.grey.shade300,
                              ),
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Image.network(
                                memes[index].url,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ID",
                                ),
                                Text(
                                  memes[index].id,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Name"),
                                Expanded(child: SizedBox()),
                                Expanded(child: Text(memes[index].name)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Box Count"),
                                Text(memes[index].boxCount.toString())
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Caption"),
                                Text(memes[index].captions.toString()),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Width"),
                                Text(memes[index].width.toString())
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Height"),
                                Text(memes[index].height.toString())
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: data.data.memes.length,
                  )),
                ],
              ),
            );
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
