



import 'dart:convert';
import 'dart:io';

import 'package:tamu_hack_2020/utilities/constants.dart';

class Requests {

  static Future<List<dynamic>> getFires() async {
    var path = "fires/v1/current-conditions?lat=${Constants.startLat}&lon=${Constants.startLong}&key=${Constants.breezeAPIKey}&radius=${Constants.breezeRadius}&units=imperial";
    var result = await getResult(path);
    print(result.toString());
//    var busMentorList = result.map((i) => BusMentor.fromJson(i)).toList();
//    return busMentorList;
  }

  static Future<dynamic> getResult(String path) async {
    String requestUrl = 'https://api.breezometer.com/$path';
    var request = await HttpClient().getUrl(Uri.parse(requestUrl));
    var response = await request.close();
    var contents =
    await response.transform(utf8.decoder).transform(json.decoder).single;
    return contents;
  }

}