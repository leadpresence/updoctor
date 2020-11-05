import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HospitalPic extends HookWidget {
  final double height;
  final double width;
  final String url;
  HospitalPic({Key key, this.height, this.width, this.url});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 80,
        width: 80,
        margin: EdgeInsets.only(left: 4, right: 4),
        decoration: BoxDecoration(
            color: Colors.grey[300],
            image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: CachedNetworkImageProvider(url ??
                    'https://image.freepik.com/free-photo/portrait-smiling-handsome-male-doctor-man_171337-5055.jpg')),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
