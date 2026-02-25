import 'package:face_it_app/controllers/auth_controllers/auth_controller.dart';
import 'package:face_it_app/models/user/user.dart';
import 'package:face_it_app/shared/styled_body_text.dart';
import 'package:face_it_app/shared/styled_heading_text.dart';
import 'package:face_it_app/widgets/snackbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

class CreateAccountPage extends ConsumerStatefulWidget {
  const CreateAccountPage({super.key});

  @override
  ConsumerState<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends ConsumerState<CreateAccountPage> {
  final _formKey = GlobalKey<FormState>();
  // the controller for the input fields
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _phoneNumber = TextEditingController();
  final TextEditingController _password = TextEditingController();

  // for obscuring the password text here
  bool obscurePassword = false;

  // we will dispose the fields here
  @override
  void dispose() {
    _fullname.dispose();
    _email.dispose();
    _phoneNumber.dispose();
    _username.dispose();
    _password.dispose();
    super.dispose();
  }

  void handleObscureText() {
    setState(() {
      obscurePassword = !obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userprovider = ref.watch(authProvider);

    return Scaffold(
      appBar: AppBar(title: StyledHeadingText(text: "Create Account")),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  spacing: 25,
                  children: [
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledBodyText(text: "Your name"),
                          TextFormField(
                            controller: _fullname,
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your name";
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledBodyText(text: "Your phone number"),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(),
                            controller: _phoneNumber,
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your phone number";
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledBodyText(text: "What's your email"),
                          TextFormField(
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              suffixIcon: Icon(TablerIcons.mail),
                            ),
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your email";
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledBodyText(text: "Password"),
                          TextFormField(
                            controller: _password,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: obscurePassword,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  handleObscureText();
                                },
                                icon: obscurePassword
                                    ? Icon(TablerIcons.eye_off)
                                    : Icon(TablerIcons.eye),
                              ),
                            ),
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter your password";
                              }

                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SizedBox(
            child: FilledButton(
              onPressed: () {
                // the user object here
                final user = User(
                  fullname: _fullname.text.trim(),
                  email: _email.text.trim(),
                  phoneNumber: _phoneNumber.text.trim(),
                  password: _password.text.trim(),
                );

                ref.read(authProvider.notifier).createAccount(user);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 5,
                children: [Text("Proceed")],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
