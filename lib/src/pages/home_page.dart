import 'package:ciber_school_a/src/pages/rate_page.dart';
import 'package:ciber_school_a/src/widgets/header.dart';
import 'package:ciber_school_a/src/widgets/list_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final screens = [const Home(), const RatePage()];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      body: Column(children: <Widget>[
        HeaderWiget(),
        ListWidget(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex = value;
            Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => screens[selectedIndex]));
          },
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home Page',
              backgroundColor: color.tertiary,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Calificanos',
                backgroundColor: color.primary)
          ]),
    );
  }
}
