import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/utils/margin.dart';

class SharePanel extends HookWidget {
  const SharePanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4, bottom: 6, top: 30),
      child: Container(
        height: 90,
        width: screenHeight(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [ShareFeeback()],
            ),
            HMargin(30),
            Column(
              children: [
                MoreFeeback(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShareFeeback extends HookWidget {
  const ShareFeeback({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 170,
      child: OutlineButton(
          borderSide: BorderSide(color: Colors.green),
          color: Colors.greenAccent[700],
          textColor: Colors.greenAccent[700],
          child: Text('Share Feedback', style: TextStyle(fontSize: 14)),
          onPressed: () {},
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0))),
    );
  }
}

class MoreFeeback extends HookWidget {
  const MoreFeeback({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 190,
      child: OutlineButton(
          borderSide: BorderSide(color: Colors.transparent, width: 0),
          // color: Colors.blAccent[700],
          textColor: Colors.blueAccent[700],
          child: Text(
            'Read more Feedbacks',
            style: TextStyle(fontSize: 14),
          ),
          onPressed: () {},
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(15.0))),
    );
  }
}
