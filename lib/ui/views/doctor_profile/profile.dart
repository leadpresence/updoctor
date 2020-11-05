import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:line_icons/line_icons.dart';
import 'package:updoctor/app/utils/colors.dart';
import 'package:updoctor/ui/views/widgets/hospital_pic.dart';
import 'package:updoctor/ui/views/widgets/kback_button.dart';
import 'package:updoctor/ui/views/widgets/background.dart';
import 'package:updoctor/app/utils/margin.dart';
import 'package:updoctor/ui/views/widgets/profilePic.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
              Padding(
                padding: EdgeInsets.only(top: 6, bottom: 6, left: 10),
                child: Container(
                  child: Text(
                    "Clinic Photos",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              HospitalImages(),
              widgetAddress()
            ],
          ),
        ));
  }

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
}

class MakeListTileDoctor extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 240,
      child: ListTile(
          dense: true,
          isThreeLine: true,
          title: Text(
            "13 years of experience",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            "Ayurveda - Diabetiologist  \n Mumbia | Maharashtra",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }
}

class SingleDoctorProfile extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 4),
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
          title: Text(
            "Ashvagandha Ayurvedic MultiSpeciality Clinic",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
        children: [
          ProfilePic(),
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
          // color: grey,
          height: 90.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              HospitalPic(),
              HospitalPic(),
              HospitalPic(),
              HospitalPic(),
              HospitalPic(),
              HospitalPic(),
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
            leading: Icon(
              LineIcons.graduation_cap,
              size: 45,
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
            leading: Icon(
              Icons.local_hospital_outlined,
              size: 45,
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

// class Test extends HookWidget {
//   final String foodName;
//   final String imgPath;
//   final String price;
//   final Color bgColor;
//   final Color textColor;
//   Test(
//       {Key key,
//       @required this.foodName,
//       this.imgPath,
//       @required this.price,
//       @required this.bgColor,
//       @required this.textColor});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.only(left: 15.0),
//         child: InkWell(
//             onTap: () {
//               //ToDo
//             },
//             child: Container(
//                 height: 105.0,
//                 width: 40.0,
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(15.0), color: bgColor),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Hero(
//                         tag: foodName,
//                         child: Container(
//                             height: 75.0,
//                             width: 75.0,
//                             decoration: BoxDecoration(
//                                 color: Colors.white, shape: BoxShape.circle),
//                             child: Center(child: CircularProgressIndicator()))),
//                     SizedBox(height: 25.0),
//                     Text(
//                       foodName,
//                       style: GoogleFonts.notoSans(
//                           fontSize: 17.0, color: textColor),
//                     ),
//                     Text('\$' + price,
//                         style: GoogleFonts.notoSans(
//                             fontSize: 17.0, color: textColor))
//                   ],
//                 ))));
//   }
// }
