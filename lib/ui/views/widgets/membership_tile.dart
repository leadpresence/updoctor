import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/models/issues.dart';
import 'package:updoctor/app/models/membership.dart';
import 'package:updoctor/app/models/specialization.dart';
import 'package:updoctor/app/utils/margin.dart';

class MembershipList extends HookWidget {
  final List<Membership> issues;

  MembershipList({this.issues});
  // : assert(specialization != null);
  @override
  Widget build(BuildContext context) {
    // List<Specialization> p = [];

    return Padding(
      //handle height of contain when list ==null
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: screenHeight(context, percent: 0.15),
        width: screenWidth(context),
        child: ListView(children: [
          // widgetSpecializationHeading(),
          widgetTiles("National Integrated Medical Association"),
          widgetTiles("Ayurveda Association"),
        ]),
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
        // trailing: Icon(CupertinoIcons.forward),
      );
}
