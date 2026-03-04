import 'package:dio/dio.dart';
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

  // for the errors here
  final _fieldErrors = {};
  dynamic validationErrors;

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

  // we will clear the errors here
  void _clearFieldErrors() {
    _fullname.clear();
    _email.clear();
    _phoneNumber.clear();
    _username.clear();
    _password.clear();
  }

  @override
  Widget build(BuildContext context) {
    final userprovider = ref.watch(authProvider);

    ref.listen(authProvider, (previous, next) {
      next.when(
        data: (data) {
          if (data != null) {
            setState(() {
              snackBarWidget(context, data.message);
              _fieldErrors.clear(); // we will clear the errors here
              _clearFieldErrors();
            });
          }
        },
        error: (error, stackTrace) {
          _fieldErrors.clear();
          if (error is DioException) {
            validationErrors = error.response!.data;

            if (validationErrors is String) {
              snackBarWidget(context, validationErrors);
            }

            if (validationErrors is Map<String, dynamic>) {
              setState(() {
                _fieldErrors.addAll(validationErrors["errors"]);
                snackBarWidget(context, validationErrors["message"].toString());
              });
            }
          }
        },
        loading: () => {},
      );
    });

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
                            decoration: InputDecoration(
                              errorText: _fieldErrors["fullname"],
                            ),
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
                            decoration: InputDecoration(
                              errorText: _fieldErrors["phone_number"],
                            ),
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
                              errorText: _fieldErrors["email"],
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
                              errorText: _fieldErrors["password"],
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
              child: userprovider.isLoading
                  ? SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(),
                    )
                  : Text("Proceed"),
            ),
          ),
        ),
      ),
    );
  }
}
