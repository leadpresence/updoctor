import 'package:flutter/material.dart';
import 'package:updoctor/ui/views/doctors_list.dart';
import 'package:updoctor/ui/views/widgets/profile_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Orkney'),
      debugShowCheckedModeBanner: false,
      home: DoctorsScreen(),
    );
  }
}
