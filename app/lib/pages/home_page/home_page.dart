import 'package:app/pages/budget_page/budget_page.dart';
import 'package:app/pages/metrics_page/metrics_page.dart';
import 'package:app/pages/news_page/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  // the list of pages here
  final List<Widget> _allPages = [NewsPage(), BudgetPage(), MetricsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _allPages[_currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(TablerIcons.news), label: "News"),
          NavigationDestination(
            icon: Icon(TablerIcons.calculator),
            label: "Budget",
          ),
          NavigationDestination(
            icon: Icon(TablerIcons.chart_infographic),
            label: "Metrics",
          ),
        ],
      ),
    );
  }
}
