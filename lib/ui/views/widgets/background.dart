import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Doctors"),
        brightness: Brightness.light,
        backgroundColor: Colors.grey[200],
        elevation: 0,
      ),
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
