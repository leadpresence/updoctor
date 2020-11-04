import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  final bool showAppBar;
  final String appTitle;
  final Widget icon;

  const Background({Key key, this.child,this.showAppBar,this.appTitle,this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: showAppBar?AppBar(
        title: Text(appTitle??""),
        brightness: Brightness.light,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading:icon ,
      ):null,
      body: Container(
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
    );
  }
}
