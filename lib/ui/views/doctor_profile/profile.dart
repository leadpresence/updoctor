import 'package:flutter/material.dart';
import 'package:updoctor/ui/views/widgets/background.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:updoctor/app/utils/margin.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Background(
      showAppBar: true,
      icon: BackButton(),
      child: Container(
        child: Column(children: [
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              // widgetBackIcon(),
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
                        width: screenWidth(context,percent: 10),
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
                        child: Container()
                    ),
                  )
                ],
              ),
            ],
          ),

        ],),
      )
    );
  }
}
