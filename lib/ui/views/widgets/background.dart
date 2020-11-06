import 'package:flutter/material.dart';
import 'package:updoctor/app/utils/colors.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool showAppBar;
  final String title;
  final Widget icon;
  final Color bcolor;

  const Background(
      {Key key,
      this.child,
      @required this.showAppBar,
      this.title,
      this.icon,
      this.bcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return showAppBar
        ? Scaffold(
            backgroundColor: bcolor ?? grey50,
            appBar: AppBar(
              title: Text(title ?? "",
                  style: TextStyle(fontSize: 20, color: darkGrey)),
              brightness: Brightness.light,
              backgroundColor: grey100,
              elevation: 0,
              leading: icon,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topRight,
                  ),
                  child ??
                      Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 0.5,
                          ),
                        ),
                      )
                ]),
              ),
            ))
        : Scaffold(
            backgroundColor: bcolor ?? grey50,
            body: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Container(
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topRight,
                  ),
                  child ??
                      Container(
                        child: Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 0.5,
                          ),
                        ),
                      )
                ]),
              ),
            ));
  }
}
