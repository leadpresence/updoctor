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

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

         children:
      
      
        [
          widgetIssuesHeading() ,
          widgetTiles("Opthamology (Eye Doctor)"),

          widgetTiles("Nuclear Medicine"),
          widgetTiles("Pediatrics"),
          widgetTiles("Integrated Medicine"),
          widgetTiles("Hair Transplant Surgery"),
         
        ],
      ),
    );
  }


  ///issues
  widgetIssuesHeading() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
        child: Container(
          child: Text(
            "Clinical Issues",
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
