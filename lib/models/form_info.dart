import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';


class FormInfo extends ChangeNotifier {
  static Image _image = Image.file(
    new File(''),
//    width: MediaQuery.of(context).size.width,
//    height: 300,
  );

  static bool _needUpload = false;

  Image get image => _image;

  bool get needUpload => _needUpload;


  set image(Image img) {
    _image = Image.file(
      File(''),
//    width: MediaQuery.of(context).size.width,
//    height: 300,
    );;
    notifyListeners();
  }

  set needUpload(bool needIt) {
    _needUpload = needIt;
    notifyListeners();
  }






}
