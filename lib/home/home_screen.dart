import 'package:flutter/material.dart';
import 'package:parct_1eslami/home/hadeth/hadeth_tab.dart';
import 'package:parct_1eslami/home/quran/quran_tab.dart';
import 'package:parct_1eslami/home/radio/raido_tab.dart';
import 'package:parct_1eslami/home/sebha/sebha_tab.dart';

class HOmescreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HOmescreen> createState() => _HOmeScreenState();
}

class _HOmeScreenState extends State<HOmescreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (newlySelectedIndex) {
              setState(() {
                selectedIndex = newlySelectedIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/moshaf_gold.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/Group6.png')),
                  label: 'Hades'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio'),
            ]),
        appBar: AppBar(
          title: const Text('Islami'),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
}
