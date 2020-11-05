import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:updoctor/app/utils/custom_navigation.dart';
import 'package:updoctor/app/utils/colors.dart';

class KBackButton extends HookWidget {
  ///use provider to lift bring in any state here
  final Function function;
  const KBackButton({
    Key key,
     this.function

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>function,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Icon(CupertinoIcons.back, size: 30.0,color: darkGrey,),
    ]));
  }
}
