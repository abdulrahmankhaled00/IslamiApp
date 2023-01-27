import 'package:flutter/material.dart';

class VerseWidget extends StatelessWidget {
  String content;
  int index;

  VerseWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10),
      child: Text('$content [$index]',
          style: TextStyle(
            fontSize: 20,
          ),
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.center),
    );
  }
}
