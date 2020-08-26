import 'package:flutter/material.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';

class CustomLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(mainColor)),
    );
  }
}
