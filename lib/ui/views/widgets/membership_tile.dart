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

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widgetMemberShip(),
          widgetTiles("National Integrated Medical Association"),
          widgetTiles("Ayurveda Association"),
        ],
      ),
    );
  }

  ///issues
  widgetMemberShip() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
        child: Container(
          child: Text(
            "Membership ",
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
        // trailing: Icon(CupertinoIcons.forward),
      );
}
