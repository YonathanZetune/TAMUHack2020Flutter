import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tamu_hack_2020/models/fire.dart';
import 'package:tamu_hack_2020/models/map_info.dart';
import 'package:tamu_hack_2020/utilities/constants.dart';

class Requests {
  static Future<List<Fire>> getFires() async {
    var path =
        "fires/v1/current-conditions?lat=${Constants.startLat}&lon=${Constants.startLong}&key=${Constants.breezeAPIKey}&radius=${Constants.breezeRadius}&units=imperial";
    var result = await getResult(path);
    print(result.toString());
    var fireList = FireList.fromJson(result).fires;
//    print(fireList.elementAt(1).lat);
    return fireList;
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
