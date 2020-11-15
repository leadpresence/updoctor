import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:line_icons/line_icons.dart';
import 'package:updoctor/app/models/specialization.dart';
import 'package:updoctor/app/utils/colors.dart';
import 'package:updoctor/ui/views/widgets/feeback_comment.dart';
import 'package:updoctor/ui/views/widgets/hospital_pic.dart';
import 'package:updoctor/ui/views/widgets/issues_tile.dart';
import 'package:updoctor/ui/views/widgets/kback_button.dart';
import 'package:updoctor/ui/views/widgets/background.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:updoctor/ui/views/widgets/membership_tile.dart';
import 'package:updoctor/ui/views/widgets/profilePic.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:updoctor/ui/views/widgets/rating_on_profile_widget.dart';
import 'package:updoctor/ui/views/widgets/report_issue.dart';
import 'package:updoctor/ui/views/widgets/share_feed_back.dart';
import 'package:updoctor/ui/views/widgets/specialization_tile.dart';

class Profile extends HookWidget {
  final bool multipleHospitals;
  Profile({Key key, this.multipleHospitals});

  @override
  Widget build(BuildContext context) {
    return Background(
        showAppBar: true,
        title: "Dr. Felix Chibueze",
        bcolor: Colors.white,

        /// TODO insert provided title here
        icon: KBackButton(),
        child: Container(
          width: screenWidth(context),
          height: screenHeight(context),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleDoctorProfile(),
              ClinicDetails(),
              SingleHospitalProfile(),
              widgetHeading(),
              HospitalImages(),
              widgetAddress(),
              Padding(
                padding:
                    EdgeInsets.only(top: 6, bottom: 6, left: 10, right: 10),
                child: Container(
                  height: 225,
                  width: screenWidth(context),
                  color: seaBlue,
                ),
              ),
              AvailableDays(),
              AvailbleInWidget(),
              multipleHospitals ?? MultipleHospitals(),
              widgetPatients(),
              RatingWidget(
                rating: 97,
                feedBack: 778,
                profiles: 990,
              ),
              FeedBackComment(),
              FeedBackComment(),
              SharePanel(),
              SpecializationList(),
              IssuesList(),
              MembershipList(),
              widgetAboutHeading(),
              widgetAbout(),
              ReportIssue()
            ],
          ),
        ));
  }

  ///photo heading
  widgetHeading() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
        child: Container(
          // alignment: Alignment.center,
          child: Text(
            "Clinic Photos",
            // textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      );

  ///photo heading
  widgetPatients() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 6),
        child: Container(
          child: Text(
            "Patients Feedback",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      );

  ///Address
  widgetAddress() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
        child: Container(
          child: Text(
            "4517 Washington Ave. Manchester, Kentucky 39495",
            maxLines: 3,
            overflow: TextOverflow.visible,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      );

  ///AboutHeading

  widgetAboutHeading() => Padding(
        padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
        child: Container(
          child: Text(
            "About Dr. Felix ",
            maxLines: 1,
            overflow: TextOverflow.visible,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
      );

  widgetAbout() => Padding(
        padding: EdgeInsets.only(top: 0, bottom: 6, left: 8, right: 8),
        child: Text(
          'Dr. Chibueze Felix is a platform where Indians can be kept in the loop about bills, policies and laws that concern us and affect us directly/indirectly. Those in power are representatives of Indian and have no right to do anything contrary to our wish because this is a Healthe and they are to exercise our wishes. This is not our wish!',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[800],
            height: 1.6,
            fontWeight: FontWeight.w300,
          ),
        ),
      );
}

class MakeListTileDoctor extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 110,
        width: 270,
        margin: const EdgeInsets.only(left: .0, right: .0),
        child: ListTile(
          dense: true,
          // isThreeLine: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0, top: 0),
            child: Text(
              "13 years of experience",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Container(
              height: 74,
              //       width: 200,
              child: Column(mainAxisSize: MainAxisSize.max,
                  //         // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "Ayurveda - Diabetiologist",
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Text(
                            " Mumbia | Maharashtra",
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ])),
        ));
  }
}

class SingleDoctorProfile extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 1.0, right: 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfilePic(),
          MakeListTileDoctor(),
        ],
      ),
    );
  }
}

class MakeListTileHospital extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 240,
      child: ListTile(
          dense: true,
          isThreeLine: true,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              "Ashvagandha Ayurvedic MultiSpeciality Clinic",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          subtitle: Text(
            "350rs",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: orange,
            ),
          )),
    );
  }
}

class SingleHospitalProfile extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          HospitalPicLarge(),
          MakeListTileHospital(),
        ],
      ),
    );
  }
}

class HospitalImages extends HookWidget {
  // final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey[50],
            boxShadow: [
              BoxShadow(
                spreadRadius: 0,
                offset: Offset(0, 10),
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 55,
              ),
            ],
          ),
          // color: grey,
          height: 90.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              HospitalPicSmall(),
              HospitalPicSmall(),
              HospitalPicSmall(),
              HospitalPicSmall(),
              HospitalPicSmall(),
              HospitalPicSmall(),
            ],
          )),
    );
  }
}

class ClinicDetails extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: screenWidth(context),
      child: Column(
        children: [
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.graduationCap,
              size: 30,
              color: black,
            ),
            title: Text(
              "Degree",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),

          ListTile(
            leading: Text(
              "MBBS - Diploma in Orthopedic - D.N.B",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
            ),
          ),

          ///Clinic Name
          ListTile(
            leading: FaIcon(
              // Icons.local_hospital_outlined,
              FontAwesomeIcons.clinicMedical,
              size: 30, color: black,
            ),
            title: Text(
              "Clinic Details",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

///Available Days
class AvailableDays extends HookWidget {
  // TODO: add parameters
  @override
  Widget build(BuildContext context) {
    TextStyle kst = TextStyle(
      fontSize: 16,
    );
    return Padding(
      padding: EdgeInsets.only(left: 6, right: 6, top: 6),
      child: Container(
        width: screenWidth(context),
        height: 60,
        // color: black,
        child: Column(
          children: [
            //Times
            Row(
              children: [
                Text(
                  "Mon-Thur:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                HMargin(5),
                Text(
                  "12:30",
                  style: kst,
                ),
                Text("-"),
                Text(
                  "17:30",
                  style: kst,
                ),
                Text(","),
                HMargin(5),
                Text(
                  "19:30",
                  style: kst,
                ),
                Text("-"),
                Text(
                  "22:30",
                  style: kst,
                ),
                Text(","),
                HMargin(5),
                Text(
                  "8:30",
                  style: kst,
                ),
                Text("-"),
                Text(
                  "12:30",
                  style: kst,
                ),
                Text(","),
              ],
            ),
            // HMargin(25),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.leaf,
                  color: black,
                  size: 12,
                ),
                HMargin(5),
                Text(
                  "Holidays:",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                HMargin(5),
                Text(
                  "Thurs",
                  style: kst,
                ),
                HMargin(5),
                Text("-"),
                HMargin(5),
                Text(
                  "Sun",
                  style: kst,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AvailbleInWidget extends HookWidget {
  // TODO: add parameters
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6, right: 6, top: 0, bottom: 6),
        child: Container(
          height: 60,
          width: screenWidth(context),
          child: Column(
            children: [
              ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.clinicMedical,
                  size: 30,
                  color: black,
                ),
                title: Text(
                  "Also Available In",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ));
  }
}

class MakeListTileMultipleHospitals extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2, right: 2),
      padding: EdgeInsets.all(0),
      height: 100,
      width: 200,
      child: ListTile(
        // dense: true,

        isThreeLine: true,
        title: Text(
          "Ashvagandha Ayurvedic MultiSpeciality Clinic",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        subtitle: Container(
            height: 64,
            //       width: 200,
            child: Column(mainAxisSize: MainAxisSize.max,
                //         // mainAxi5sAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Row(
                      children: [
                        Text(
                          " Solapur, Maharashtra",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
      ),
    );
  }
}

class MultipleHospitals extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: add parameters

    return Padding(
      padding:
          const EdgeInsets.only(left: 2.2, right: 2.2, bottom: 8, top: 0.2),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HospitalPicLarge(),
          MakeListTileMultipleHospitals(),
          HospitalPicLarge(),
        ],
      ),
    );
  }
}
