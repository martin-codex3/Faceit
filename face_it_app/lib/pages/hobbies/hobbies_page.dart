import 'package:face_it_app/controllers/hobbies_controllers/create_hobbies_notifier.dart';
import 'package:face_it_app/controllers/hobbies_controllers/hobbies_controller.dart';
import 'package:face_it_app/models/create_hobbies/create_hobbies.dart';
import 'package:face_it_app/pages/authentication/login_page.dart';
import 'package:face_it_app/shared/styled_body_text.dart';
import 'package:face_it_app/shared/styled_heading_text.dart';
import 'package:face_it_app/widgets/snackbar_widget.dart';
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
    final createHobbies = ref.watch(createHobbyProvider);

    ref.listen(createHobbyProvider, (previous, next) {
      next.when(
        data: (data) {
          snackBarWidget(context, "Account created successfully");

          // we will navigate the page here
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return LoginPage();
              },
            ),
          );
        },
        error: (error, stackTrace) {
          return snackBarWidget(context, error.toString());
        },
        loading: () {},
      );
    });

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
                          Icon(TablerIcons.palette),
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
            onPressed: () {
              if (_selectedHobbies.isEmpty) {
                return snackBarWidget(context, "Select some hobbies");
              }

              if (_selectedHobbies.length <= 5) {
                return snackBarWidget(context, "Select more than 5 hobbies");
              }

              final selectedHobby = CreateHobbies(hobbies: _selectedHobbies);

              // we will add the hobby here
              ref
                  .read(createHobbyProvider.notifier)
                  .createNewHobby(selectedHobby);
            },
            child: createHobbies.isLoading
                ? SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(),
                  )
                : Text("Finalise Account Creation"),
          ),
        ),
      ),
    );
  }
}
