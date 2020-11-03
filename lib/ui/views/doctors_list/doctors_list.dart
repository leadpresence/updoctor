import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:updoctor/ui/views/widgets/profile_card.dart';
import 'package:flutter/services.dart';
import 'package:updoctor/ui/views/widgets/background.dart';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';

class DoctorsScreen extends StatefulWidget {
  //TODO make this a hook widget
  DoctorsScreen({Key key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Background(
      child: Container(
          height: screenHeight(context),
          child: Column(children: <Widget>[
            /// stack to position back button and the serch field
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                widgetBackIcon(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child:

                          ///parent container for the text field
                          ///decoration
                          Container(
                              height: 50,
                              width: screenWidth(context) - 10,
                              margin: EdgeInsets.symmetric(horizontal: 60),
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
                    )
                  ],
                ),
              ],
            ),
            const VMargin(60),

            ///This is the Parent to the List of doctors Models
            DoctorsList()
          ])),
    );
  }

  widgetBackIcon() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            CupertinoIcons.back,
            size: 40.0,
          ),
        ],
      );
  widgetSearchtextField() => TextField(
        style: TextStyle(color: Colors.grey),
        decoration: new InputDecoration(
          border: InputBorder.none,
          prefixIcon: new Icon(CupertinoIcons.search),
          hintText: '',
          hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      );
}

class DoctorsList extends HookWidget {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) - 150,
      width: screenWidth(context),
      child: FadingEdgeScrollView.fromScrollView(
        gradientFractionOnEnd: 0.5,
        child: ListView.builder(
          controller: _scrollController,
          itemBuilder: (context, index) => ProfileCard(),
          itemCount: 15,
        ),
      ),
    );
  }
}
