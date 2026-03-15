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
          NavigationDestination(icon: Icon(TablerIcons.home), label: "Home"),
          NavigationDestination(
            icon: Icon(TablerIcons.home),
            label: "Expenses",
          ),
          NavigationDestination(icon: Icon(TablerIcons.home), label: "Metrics"),
        ],
      ),
    );
  }
}
