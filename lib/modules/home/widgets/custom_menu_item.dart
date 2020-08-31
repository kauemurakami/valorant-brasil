import 'package:flutter/material.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CustomContainerMenu extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  CustomContainerMenu(this.text, this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 16.0),
        width: 300,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: mainColor),
        ),
        child: FlatButton(
          splashColor: mainColor,
          onPressed: this.callback,
          child: Center(
              child: Text(
            this.text,
            style: listMenu,
          )),
        ));
  }
}
