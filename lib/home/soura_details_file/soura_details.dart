import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parct_1eslami/home/soura_details_file/souradeitailsarg.dart';
import 'package:parct_1eslami/home/soura_details_file/vears_widget.dart';

class SouraDetailsScreen extends StatefulWidget {
  static const String routName = 'soura details';

  @override
  State<SouraDetailsScreen> createState() => _SouraDetailsScreenState();
}

class _SouraDetailsScreenState extends State<SouraDetailsScreen> {
  List<String> vearses = [];

  @override
  Widget build(BuildContext context) {
    SouraDetailsArg? arg =
        (ModalRoute.of(context)?.settings.arguments) as SouraDetailsArg;
    if (vearses.isEmpty) readFile(arg.index + 1);
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(arg.name),
            ),
            body: vearses.isEmpty
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Card(
                    margin: EdgeInsetsDirectional.all(30),
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: ListView.separated(
                        itemBuilder: (_, index) {
                          return Container(
                              alignment: Alignment.center,
                              child: VerseWidget(vearses[index], index));
                        },
                        itemCount: vearses.length,
                        separatorBuilder: (_, index) {
                          return Container(
                            color: Theme.of(context).primaryColor,
                            height: 3,
                          );
                        }),
                  )));
  }

  void readFile(int index) async {
    String souraContent =
        await rootBundle.loadString('assets/files/$index.txt');
    List<String> lines = souraContent.trim().split('\n');
    setState(() {
      vearses = lines;
    });
  }
}
