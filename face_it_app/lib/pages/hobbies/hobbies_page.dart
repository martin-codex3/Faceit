import 'package:face_it_app/controllers/hobbies_controllers/hobbies_controller.dart';
import 'package:face_it_app/shared/styled_body_text.dart';
import 'package:face_it_app/shared/styled_heading_text.dart';
import 'package:face_it_app/shared/styled_title_text.dart';
import 'package:face_it_app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class HobbiesPage extends ConsumerStatefulWidget {
  const HobbiesPage({super.key});

  @override
  ConsumerState<HobbiesPage> createState() => _HobbiesPageState();
}

class _HobbiesPageState extends ConsumerState<HobbiesPage> {
  // for the selected hobbies
  final List<String> _selectedHobbies = [];

  @override
  Widget build(BuildContext context) {
    final hobbies = ref.watch(hobbieProvider);
    return Scaffold(
      appBar: AppBar(title: StyledHeadingText(text: "Select hobbies")),
      body: hobbies.when(
        data: (data) {
          return ListView.builder(
            itemCount: data.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    if (data[index].title == "Arts And Craft")
                      Row(
                        spacing: 10,
                        children: [
                          Icon(TablerIcons.artboard),
                          Text(
                            data[index].title,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),

                    if (data[index].title == "Music & Performance")
                      Row(
                        spacing: 10,
                        children: [
                          Icon(TablerIcons.music),
                          Text(
                            data[index].title,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),

                    if (data[index].title == "Sports & Fitness")
                      Row(
                        spacing: 10,
                        children: [
                          Icon(TablerIcons.ball_american_football),
                          Text(
                            data[index].title,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),

                    if (data[index].title == "Outdoor & Nature")
                      Row(
                        spacing: 10,
                        children: [
                          Icon(TablerIcons.trees, size: 30),
                          Text(
                            data[index].title,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),

                    if (data[index].title == "Food & Drink")
                      Row(
                        spacing: 10,
                        children: [
                          Icon(TablerIcons.burger),
                          Text(
                            data[index].title,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),

                    if (data[index].title == "Games & Tech")
                      Row(
                        spacing: 10,
                        children: [
                          Icon(TablerIcons.device_gamepad_2),
                          Text(
                            data[index].title,
                            style: TextStyle(fontSize: 22),
                          ),
                        ],
                      ),

                    Wrap(
                      spacing: 10,
                      runSpacing: 3,
                      children: data[index].hobbies.map((hobby) {
                        return FilterChip(
                          label: Text(hobby),
                          selected: _selectedHobbies.contains(hobby),
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                _selectedHobbies.add(hobby);
                              }

                              if (!selected) {
                                _selectedHobbies.remove(hobby);
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                  ],
                ),
              );
            },
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: StyledBodyText(text: "Failed to fetch the hobbies"),
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(8),
          child: FilledButton(
            onPressed: () {},
            child: Text("Finalise Account Creation"),
          ),
        ),
      ),
    );
  }
}
