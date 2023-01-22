import 'package:flutter/material.dart';
import 'package:parct_1eslami/home/soura_details_file/soura_details.dart';
import 'package:parct_1eslami/home/soura_details_file/souradeitailsarg.dart';

class SouraTitle extends StatelessWidget {
  String title;
  int index;

  SouraTitle(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SouraDetailsScreen.routName,
            arguments: SouraDetailsArg(name: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
