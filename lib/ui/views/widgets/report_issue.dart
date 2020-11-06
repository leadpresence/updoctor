import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:updoctor/app/utils/colors.dart';

class ReportIssue extends StatelessWidget {
  const ReportIssue({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(left: 4.0, right: 4, bottom: 66, top: 30),
        child: Container(
          height: 70,
          width: 190,
          color: grey100,
          // decoration: ,
          child: OutlineButton(
            // color: Colors.grey,
            borderSide: BorderSide(color: grey100, width: 0),
            // textColor: Colors.green[7400],
            child: ListTile(
              leading: Text(
                'Report Issues',
                style: TextStyle(fontSize: 18),
              ),
              trailing: Icon(
                FluentIcons.flag_pride_24_filled,
                color: black,
              ),
            ),
            //TODO implement onpressed
            onPressed: () {},
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(15.0)),
          ),
        ));
  }
}
