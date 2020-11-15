import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:updoctor/app/utils/custom_navigation.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:line_icons/line_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/utils/colors.dart';
import 'package:updoctor/ui/views/doctor_profile/profile.dart';

class ProfileCard extends StatefulWidget {
  final Orientation orientation;
  ProfileCard({this.orientation, Key key}) : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, CustomPageRoute(Profile()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 198,
              width: screenWidth(context),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: -7,
                      offset: Offset(0, 10),
                      color: Color(0xFFFFFF),
                      blurRadius: 10,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                // alignment: Alignment.topLeft,
                children: [
                  ///rate  number
                  Positioned(
                    // top: 8,
                    left: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24, left: 8.0),
                      child: Column(
                        children: [widgetYearsOfExp()],
                      ),
                    ),
                  ),

                  ///Doctor profile container Parent
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                      height: 110,
                      width: screenWidth(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [widgetDoctorPic(), widgetDoctorDetails()],
                      ),
                    ),
                  ),

                  ///Hospital Name & Price Chip
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 112, left: 8.0, right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [widgetHospitalName(), widgetPriceChip()],
                      )),

                  ///FeedBack
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 158, left: 8.0, right: 8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("78"),
                              Text("FeedBack"),
                            ],
                          ),
                          HMargin(25),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("~" + "3.0" + "km"),
                              Text("Distance"),
                            ],
                          ),
                          HMargin(100),
                          Column(
                            children: [widgetCallChip()],
                          ),
                          HMargin(25),
                          Column(
                            children: [widgetBookChip()],
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  widgetYearsOfExp() =>
      Text("10", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12));

  widgetDoctorPic() => Container(
        height: 65,
        width: 65,
        margin: EdgeInsets.all(9),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
                fit: BoxFit.cover,
                image: CachedNetworkImageProvider(
                    'https://image.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg')),
            borderRadius: BorderRadius.circular(5)),
      );

  widgetDoctorDetails() => Expanded(
        // flex: 1,
        child: ListTile(
          dense: true,
          isThreeLine: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          onTap: () {},
          title: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              'Dr.' + 'Swapnil Katare',
              overflow: TextOverflow.clip,
              maxLines: 3,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          subtitle: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // VMargin(23),
              Row(
                children: [
                  Text(
                    "Ophtalmologist",
                    overflow: TextOverflow.clip,
                    maxLines: 3,
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  HMargin(5),
                  Text(
                    "|",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 14),
                  ),
                  HMargin(5),
                  Text(
                    "45",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 14),
                  ),
                  HMargin(4.09),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.thumb_up,
                      size: 16,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              // const VMargin(7),
            ],
          ),
          trailing: Column(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: Icon(
                    LineIcons.check_circle,
                    color: Colors.green,
                    size: 20,
                  )),
              Spacer(
                flex: 60,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Icon(
                    LineIcons.bookmark,
                    color: Colors.grey,
                    size: 20,
                  )),
              Spacer(
                flex: 30,
              ),
              Expanded(
                  child: GestureDetector(
                onTap: () {},
                child: Icon(
                  CupertinoIcons.videocam_fill,
                  color: Colors.grey,
                  size: 20,
                ),
              )),
            ],
          ),
        ),
      );

  widgetHospitalName() => Flexible(
        flex: 2,
        child: Container(
          height: 40,
          width: 250,
          child: Text("Luftanza multispeciality clinic",
              overflow: TextOverflow.clip,
              maxLines: 2,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
        ),
      );

  widgetPriceChip() => Container(
        height: 30,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.grey[100],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/money-sign.png")))),
              HMargin(10.0),
              widgetPriceText()
            ],
          ),
        ),
      );

  widgetPriceText() => Container(
        child: Text("750",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
      );
  widgetCallChip() => Container(
        height: 35,
        width: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[100],
            border: Border.all(width: 1, color: Colors.green)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [widgetCallText()],
          ),
        ),
      );

  widgetCallText() => Container(
        child: Text("Call",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            )),
      );

  widgetBookChip() => Container(
        height: 35,
        width: 55,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[100],
            border: Border.all(width: 1, color: dark_grey)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [widgetBookText()],
          ),
        ),
      );

  widgetBookText() => Container(
        child: Text("Book",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
            )),
      );
}
