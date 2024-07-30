import 'dart:convert';

import 'package:http/http.dart' as https;
import 'package:http/http.dart';
import 'package:with_api/models/first/user_data.dart';
import 'package:with_api/models/fourth/my_top_level_data.dart';
import 'package:with_api/models/second/top_level_data.dart';
import 'package:with_api/models/third/story_entity/top_level.dart';

class Repository {
  static Future<UserData> getUserData() async {
    try {
      Response response =
          await https.get(Uri.parse("https://api.agify.io/?name=bella"));
      if (response.statusCode == 200) {
        UserData userData = UserData.fromJson(jsonDecode(response.body));
        print(userData.name);
        return userData;
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }

  static Future<TopLevelData> getMemes() async {
    try {
      Response response =
          await https.get(Uri.parse("https://api.imgflip.com/get_memes"));
      if (response.statusCode == 200) {
        TopLevelData topLevelData =
            TopLevelData.fromJson(jsonDecode(response.body));
        return topLevelData;
      } else {
        throw Exception();
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e);
    }
  }

  static Future<TopLevel> getStories() async {
    try {
      Response response = await https.get(Uri.parse(
          "https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=mD46rKtYMNXAYpzZSyvAXK3u2ANtQd4A"));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var myDecodedJSON = jsonDecode(response.body);
        // print(myDecodedJSON["results"][0]["des_facet"][0]);
        return TopLevel.fromJson(myDecodedJSON);
      } else
        throw Exception();
    } catch (e) {
      print(e);
      throw Exception();
    }
  }

  static Future<MyTopLevelData> getMyTopLevelData() async {
    try {
      Response response = await https.get(Uri.parse(
          "https://archive.org/metadata/TheAdventuresOfTomSawyer_201303"));
      if (response.statusCode >= 200 && response.statusCode < 300) {
        var myDecodedJSON = jsonDecode(response.body);
        print(myDecodedJSON.toString());
        // print(myDecodedJSON["results"][0]["des_facet"][0]);
        return MyTopLevelData.fromJson(myDecodedJSON);
      } else
        throw Exception();
    } catch (e) {
      print(e);
      throw Exception();
    }
  }
}
