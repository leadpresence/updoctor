import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/models/client_model.dart';
import 'package:updoctor/app/models/negative_feedback_model.dart';
import 'package:updoctor/app/models/positive_feedback_model.dart';
import 'package:updoctor/app/utils/colors.dart';
import 'package:updoctor/app/utils/margin.dart';

class FeedBackComment extends HookWidget {
  final NegativeFeedback negativeFeedback;
  final PositiveFeedback positiveFeedback;
  FeedBackComment({Key key, this.negativeFeedback, this.positiveFeedback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfilePicComementSmall(),
              MakeListTileComment(),
            ],
          ),
          VMargin(5),
          widgetHeading(),
          widgetComment()
        ],
      ),
    );
  }

  widgetHeading() => Padding(
      padding: EdgeInsets.only(top: 6, bottom: 2, left: 4),
      child: Container(
          alignment: Alignment.center,
          height: 50,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      textAlign: TextAlign.left,
                      softWrap: true,
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "Consulted regarding ",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: black),
                          ),
                          TextSpan(
                              text: "Oral Cavity Pain",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: pink)),
                        ],
                      )),
                ],
              ),
            )
          ])));

  widgetComment() => Padding(
        padding: EdgeInsets.only(top: 0, bottom: 6, left: 4),
        child: Text(
          'Up doctor! is a platform where Indians can be kept in the loop about bills, policies and laws that concern us and affect us directly/indirectly. Those in power are representatives of Indian and have no right to do anything contrary to our wish because this is a Healthe and they are to exercise our wishes. This is not our wish!',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
            height: 1.6,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
}

class ProfilePicComementSmall extends HookWidget {
  final double height;
  final double width;
  final String url;
  ProfilePicComementSmall({Key key, this.height, this.width, this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55,
        width: 55,
        margin: EdgeInsets.only(left: 4, right: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[50],
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: CachedNetworkImageProvider(url ??
                    'https://image.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg')),
            // boxShadow: [
            //   BoxShadow(
            //     spreadRadius: 2,
            //     offset: Offset(0, 10),
            //     color: Colors.grey.withOpacity(0.5),
            //     blurRadius: 15,
            //   ),
            // ]
            )
            );
  }
}

class MakeListTileComment extends HookWidget {
  @override
  Widget build(BuildContext context) {
    String clientName = "Felix";
    int time = 3;
    return Container(
      // height: 100,
      width: 250,
      child: ListTile(
          dense: true,
          isThreeLine: true,
          // title: Text(
          //   "13 years of experience",
          //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          // ),
          subtitle: Text(
            "$clientName  \n $time days ago",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}
