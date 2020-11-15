import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/models/specialization.dart';
import 'package:updoctor/app/utils/margin.dart';

class SpecializationList extends HookWidget {
  final List<Specialization> specialization;

  SpecializationList({this.specialization});
  // : assert(specialization != null);
  @override
  Widget build(BuildContext context) {
    // List<Specialization> p = [];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widgetSpecializationHeading(),
          widgetTiles("Opthamology (Eye Doctor)"),
          widgetTiles("Opthamology (Eye Doctor)"),
          widgetTiles("Nuclear Medicine"),
          widgetTiles("Pediatrics"),
          widgetTiles("Integrated Medicine"),
          widgetTiles("Hair Transplant Surgery"),
         
        ],
      ),
    );
  }

  ///specialization
  widgetSpecializationHeading() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
        child: Container(
          child: Text(
            "Clinical Specialization",
            maxLines: 1,
            overflow: TextOverflow.visible,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      );
  widgetTiles(String name) => ListTile(
        title: Text(
          "$name",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.normal,
          ),
          overflow: TextOverflow.fade,
          maxLines: 2,
        ),
        trailing: Icon(CupertinoIcons.forward),
      );
}
