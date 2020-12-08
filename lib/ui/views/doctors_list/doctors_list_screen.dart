import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:line_icons/line_icons.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:updoctor/ui/views/widgets/profile_card.dart';
import 'package:flutter/services.dart';
import 'package:updoctor/ui/views/widgets/background.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/utils/colors.dart';
import 'dart:ui' as ui;

class DoctorsScreen extends StatefulWidget {
  //TODO make this a hook widget
  DoctorsScreen({Key key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return Background(
      showAppBar: false,
      child: SafeArea(
        child: Container(
            // color: Colors.transparent,
            height: screenHeight(context),
            width: screenWidth(context),
            child: Column(children: <Widget>[
              /// stack to position back button and the search field
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  widgetBackIcon(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child:

                            ///parent container for the text field
                            ///decoration
                            Container(
                                height: 47,
                                width: screenWidth(context, percent: 10),
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      width: 1, color: Colors.grey[50]),
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: -12,
                                      offset: Offset(0, 10),
                                      color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 25,
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(vertical: 10),

                                ///text editing for the search
                                child: widgetSearchtextField()),
                      ),
                    ],
                  ),
                ],
              ),
              const VMargin(60),
              FilterPanel(),
              const VMargin(60),

              ///This is the Parent to the List of doctors Models
              DoctorsList()
            ])),
      ),
    );
  }

  widgetBackIcon() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(CupertinoIcons.back, size: 40.0),
        ],
      );
  widgetSearchtextField() => TextField(
        style: TextStyle(color: Colors.grey),
        decoration: new InputDecoration(
          border: InputBorder.none,
          prefixIcon: new Icon(LineIcons.search),
          hintText: 'search..',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      );
}

class DoctorsList extends HookWidget {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context)-100,
      width: screenWidth(context),
      // child: FadingEdgeScrollView.fromScrollView(
      // gradientFractionOnEnd: 0.5,
      // gradientFractionOnStart: 0.5,
      child: ListView.builder(
        controller: _scrollController,
        itemBuilder: (context, index) => ProfileCard(),
        itemCount: 15,
      ),
      // ),
    );
  }
}

class FilterPanel extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Container(
        height: 200,
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(left: 42, right: 42, top: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Filter",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
              ),
              Spacer(
                flex: 15,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.filter_alt_rounded,
                    color: dark_grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
