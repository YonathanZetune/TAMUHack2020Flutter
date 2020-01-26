import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:tamu_hack_2020/models/form_info.dart';
import 'package:tamu_hack_2020/models/map_info.dart';

class ReportPage extends StatelessWidget {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  Future getImage(BuildContext context) async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
//    var formInfo = Provider.of<FormInfo>(context, listen: false);
  }

  Future<void> uploadImage(){

  }

  @override
  Widget build(BuildContext context) {
    var formInfo = Provider.of<FormInfo>(context, listen: false);
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Report Animal / Help"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: <Widget>[
              FormBuilder(
                key: _fbKey,
                initialValue: {
                  'date': DateTime.now(),
                  'accept_terms': false,
                },
                autovalidate: true,
                child: Column(
                  children: <Widget>[
                    FormBuilderSegmentedControl(
                      decoration: InputDecoration(labelText: "Report Type"),
                      attribute: "reporting_type",
                      options: List.generate(2, (i) => i + 1)
                          .map((number) => FormBuilderFieldOption(
                              value: number == 1 ? "Animal" : "Help"))
                          .toList(),
                    ),
                    FormBuilderTextField(
                      attribute: "Description",
                      decoration: InputDecoration(labelText: "Summary"),
                      validators: [
                        FormBuilderValidators.max(100),
                      ],
                    ),
                    FormBuilderSwitch(
                      label: Text('Upload Image'),
                      attribute: "accept_terms_switch",
                      initialValue: false,
                      onChanged: (selected) {
                        if (selected) {
                          print('selected');
                          formInfo.needUpload = true;

                          getImage(context);
//                          build(context);

                        } else {
                          print('notselected');
                          formInfo.image = null;

//                          build(context);
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
