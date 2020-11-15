import 'package:flutter/material.dart';
import 'package:updoctor/app/utils/margin.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  final int feedBack;
  final int profiles;
  const RatingWidget({Key key, this.rating, this.feedBack, this.profiles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle kstyleSm = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
    TextStyle kstyleLg = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    int kdefault = 0;
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 2.2, bottom: 8, top: 0.2),
      child: Container(
        alignment: Alignment.center,
        height: 70,
        child: Row(
          // mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${rating ?? kdefault}%',
                  style: kstyleLg,
                  overflow: TextOverflow.fade,
                ),
                VMargin(2),
                Text(
                  "Rating",
                  style: kstyleSm,
                  overflow: TextOverflow.fade,
                )
              ],
            ),
            HMargin(72),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${feedBack ?? kdefault}%',
                  style: kstyleLg,
                  overflow: TextOverflow.fade,
                ),
                VMargin(2),
                Text(
                  "Feedback",
                  style: kstyleSm,
                )
              ],
            ),
            HMargin(71),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${profiles ?? kdefault}%',
                  style: kstyleLg,
                  overflow: TextOverflow.fade,
                ),
                VMargin(2),
                Text(
                  "Profiles",
                  style: kstyleSm,
                )
              ],
            ),
            HMargin(50),
          ],
        ),
      ),
    );
  }
}
