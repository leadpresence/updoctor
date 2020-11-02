import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:updoctor/ui/views/widgets/profile_card.dart';
import 'package:flutter/services.dart';

class DoctorsScreen extends StatefulWidget {
  DoctorsScreen({Key key}) : super(key: key);

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Doctors"),
        brightness: Brightness.light,
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
      body: SafeArea(
        ///Screen Container

        child: Container(
            height: screenHeight(context) - 100,
            child: Column(children: <Widget>[
              // const VMargin(90),

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

                  //USER A FUTURE BUILD HERE
                ],
              ),
              const VMargin(60),

              ///This is the Parent to the List of doctors Models
              Container(
                height: screenHeight(context) - 150,
                width: screenWidth(context),

                /// TODO USER A FUTURE BUILD HERE
                child: ListView(
                  children: [
                    ProfileCard(),
                    const VMargin(4),
                    ProfileCard(),
                    ProfileCard(),
                    ProfileCard()
                  ],
                ),
              )
            ])),
      ),
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
