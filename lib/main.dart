import 'package:flutter/material.dart';
import 'package:updoctor/app/models/doctor_model.dart';
import 'package:updoctor/ui/views/doctor_profile/profile.dart';
import 'package:updoctor/ui/views/doctors_list/doctors_list_screen.dart';
import 'package:updoctor/ui/views/widgets/profile_card.dart';

void main() {
  runApp(Updoctor());
}

class Updoctor extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'SFProDisplay'),
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
