import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileCard extends StatefulWidget {
  final Orientation orientation;
  ProfileCard({this.orientation, Key key}) : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 181,
            width: screenWidth(context),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: -7,
                    offset: Offset(0, 10),
                    // color: Colors.grey.withOpacity(0.2),
                    color: Color(0xFFFFFF),
                    blurRadius: 10,
                  ),
                ],
                borderRadius: BorderRadius.circular(4)),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                ///rate  number
                Positioned(
                  // top: 8,
                  left: 11,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8.0),
                    child: Column(
                      children: [widgetTextRate()],
                    ),
                  ),
                ),

                ///Doctor profile container Parent
                Padding(
                  padding: const EdgeInsets.only(left: 26.0),
                  child: Container(
                    height: 100,
                    width: screenWidth(context),
                    child: Row(
                      children: [
                        widgetDoctorPic(),

                        ///Doctor Names and Title & Hospital Name
                        widgetDoctorDetails()
                      ],
                    ),
                  ),
                ),

                VMargin(26),

                ///Hospital Name & Price Chip
                Padding(
                    padding:
                        const EdgeInsets.only(top: 86, left: 8.0, right: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        widgetHospitalName(),
                        HMargin(7),
                        widgetPriceChip()
                      ],
                    )),
                VMargin(40),

                ///FeedBack
                Padding(
                    padding:
                        const EdgeInsets.only(top: 130, left: 8.0, right: 8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("78"),
                            Text("FeedBack"),
                          ],
                        ),
                        HMargin(25),
                        Column(
                          children: [
                            Text("~" + "3.0" + "km"),
                            Text("Distance"),
                          ],
                        ),
                        HMargin(35),
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
    );
  }

  widgetTextRate() =>
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
          contentPadding: EdgeInsets.symmetric(horizontal: 14),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              VMargin(23),
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
                  HMargin(5),
                  Icon(
                    // CupertinoIcons.hand_thumbsup_fill,
                    Icons.thumb_up,
                    size: 16,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              // const VMargin(7),
            ],
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle_outline_outlined,
                color: Colors.black,
                size: 20,
              ),
              Icon(
                Icons.bookmark_border_outlined,
                color: Colors.black,
                size: 20,
              ),
              Expanded(
                child: Icon(
                  Icons.video_call_outlined,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      );

  widgetHospitalName() => Container(
        height: 40,
        width: 250,
        child: Text("Luftanza multispeciality clinic",
            overflow: TextOverflow.clip,
            maxLines: 2,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
      );

  widgetPriceChip() => Container(
        height: 35,
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
        height: 40,
        width: 80,
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
        height: 40,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[100],
            border: Border.all(width: 1, color: Colors.green)),
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
