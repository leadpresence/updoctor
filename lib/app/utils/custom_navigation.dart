import 'package:flutter/material.dart';

class CustomPageRoute<T> extends PageRoute<T> {
  CustomPageRoute(this.child);

  final Widget child;

  ///
  @override
  Color get barrierColor => Colors.white;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return FadeTransition(opacity: animation, child: child);
  }

  ///maitain the state
  @override
  bool get maintainState => true;

  ///implement transition in given duration
  @override
  Duration get transitionDuration => Duration(milliseconds: 350);
}
