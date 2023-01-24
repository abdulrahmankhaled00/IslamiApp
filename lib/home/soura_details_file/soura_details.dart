import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parct_1eslami/home/soura_details_file/souradeitailsarg.dart';

class SouraDetailsScreen extends StatelessWidget {
  static const String routName = 'soura details';

  @override
  Widget build(BuildContext context) {
    SouraDetailsArg? arg =
        (ModalRoute.of(context)?.settings.arguments) as SouraDetailsArg;

    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text(arg.name),
          ),
        ));
  }

  void readFile(int index) async {
    String souraContent =
        await rootBundle.loadString('assets/files/$index.text');
  }
}
