import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Faceit App")),
      body: Center(child: Text("hey mate")),
      bottomNavigationBar: NavigationBar(
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
