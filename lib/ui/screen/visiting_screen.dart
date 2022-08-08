import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';
import 'package:places/mocks.dart';
import 'package:places/ui/screen/app_strings.dart';
import 'package:places/ui/screen/sight_to_visit_card.dart';
import 'package:places/ui/screen/visited_sight_card.dart';

class VisitingScreen extends StatefulWidget {
  const VisitingScreen({Key? key}) : super(key: key);

  @override
  State<VisitingScreen> createState() => _VisitingScreenState();
}

class _VisitingScreenState extends State<VisitingScreen> {
  final List<Sight> visitedSights = visitedSight;
  final List<Sight> sightsToVisit = sightToVisit;

  @override
  Widget build(BuildContext context) {
    final sightToVisitList = sightsToVisit
        .map((item) => SightToVisitCard(sightToVisit: item))
        .toList();
    final visitedSightList = visitedSights
        .map((item) => VisitedSightCard(visitedSight: item))
        .toList();

    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          elevation: 0.0,
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          title: const Text(
            AppStrings.favorite,
            style:
                TextStyle(color: Color.fromRGBO(59, 62, 91, 1), fontSize: 18),
          ),
          bottom: ColoredTabBar(
            const Color.fromRGBO(245, 245, 245, 1),
            TabBar(
              splashBorderRadius: BorderRadius.circular(40),
              unselectedLabelColor: const Color.fromRGBO(124, 126, 146, 1),
              indicator: BoxDecoration(
                color: const Color.fromRGBO(59, 62, 91, 1),
                borderRadius: BorderRadius.circular(40),
              ),
              tabs: const [
                Tab(text: AppStrings.sightToVisit),
                Tab(text: AppStrings.visitedSight),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: visitedSightList,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: sightToVisitList,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromRGBO(37, 40, 73, 1),
          unselectedItemColor: Colors.grey,
          currentIndex: 2,
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.list_alt_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.map),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar(this.color, this.tabBar, {Key? key}) : super(key: key);

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        child: Container(
          child: tabBar,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      );
}
