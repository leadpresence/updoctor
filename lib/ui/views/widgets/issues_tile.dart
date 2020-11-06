import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/models/issues.dart';
import 'package:updoctor/app/models/specialization.dart';
import 'package:updoctor/app/utils/margin.dart';

class IssuesList extends HookWidget {
  final List<Issues> issues;

  IssuesList({this.issues});
  // : assert(specialization != null);
  @override
  Widget build(BuildContext context) {
    // List<Specialization> p = [];

    return Padding(
      //handle height of contain when list ==null
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight(context, percent: 0.4),
        width: screenWidth(context),
        child: ListView(
          children: [
            // widgetSpecializationHeading(),
            widgetTiles("Opthamology (Eye Doctor)"),
            widgetTiles("Nuclear Medicine"),
            widgetTiles("Pediatrics"),
            widgetTiles("Integrated Medicine"),
            widgetTiles("Hair Transplant Surgery"),
          ],
        ),
      ),
    );
  }

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
