import 'package:fidelity_ui_samples/Global/fade_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Components/customerbuton.dart';
import '../../Components/customerloader.dart';
import '../../Helpers/naigationHelper.dart';
import '../Colors/appcolors.dart';
import '../Home/homePage.dart';
import 'signup_page.dart';

class LoginPage extends StatefulWidget {


  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final appColors = AppColors();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  bool _isValidEmail(String value) {
    final emailRegExp = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegExp.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    bool _obscureText = true;

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 315,
                width: 300,
                child: Image.asset("assets/images/logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    FadeInSlide(
                      duration: 2.2,
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: appColors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInSlide(
                        duration: 1.4,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          controller: emailController,
                          enabled: true,
                          decoration: InputDecoration(
                            filled: false,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            prefixIcon:
                                Icon(Icons.email, color: appColors.grey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: appColors.grey),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: appColors.grey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            labelText: 'Email',
                            labelStyle:
                                TextStyle(color: appColors.grey, fontSize: 12),
                          ),
                          style:
                              TextStyle(color: appColors.black, fontSize: 12),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Email cannot be empty";
                            } else if (!_isValidEmail(value)) {
                              return "Please enter a valid email address";
                            } else {
                              return null;
                            }
                          },
                        )),
                    const SizedBox(
                      height: 8,
                    ),
                    FadeInSlide(
                        duration: 1.6,
                        child: StatefulBuilder(
                          builder: (context, setState) {
                            return TextFormField(
                              keyboardType: TextInputType.text,
                              obscureText: _obscureText,
                              controller: passwordController,
                              enabled: true,
                              decoration: InputDecoration(
                                filled: false,
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                prefixIcon:
                                    Icon(Icons.lock, color: appColors.grey),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.grey,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: appColors.grey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: appColors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                    color: appColors.grey, fontSize: 12),
                              ),
                              style: TextStyle(
                                  color: appColors.black, fontSize: 12),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Password is required';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                } else {
                                  return null;
                                }
                              },
                            );
                          },
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    FadeInSlide(
                      duration: 1.8,
                      child: CustomButton(
                          btnColor: appColors.red,
                          width: screenWidth,
                          borderRadius: 10,
                          child: Text(
                            'Log In',
                            style: TextStyle(color: appColors.white),
                          ),
                          onTap: () async {
                            // showDialog(
                            //     context: context,
                            //     barrierDismissible: false,
                            //     builder: (context) {
                            //       return const CustomLoader(
                            //           message: 'Logging in');
                            //     });
                            Helpers.temporaryNavigator(context, homePage());
                                // Helpers.temporaryNavigator(context, myHomePage());
                            // await AuthServices.login(context: context, emailAddress: emailController.text.trim(), password: passwordController.text.trim());
                          }),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FadeInSlide(
                      duration: 2.0,
                      child: GestureDetector(
                        // onTap: () => Helpers.temporaryNavigator(context, ForgotPasswordScreen()),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 12, color: appColors.white),
                              children: [
                                TextSpan(
                                    text: "Forgot Password?",
                                    style: TextStyle(
                                        color: appColors.redAccent,
                                        fontWeight: FontWeight.w400))
                              ]),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    FadeInSlide(
                      duration: 2.8,
                      child: GestureDetector(
                        onTap: (){
                          Helpers.temporaryNavigator(context, signupPage());
                        },
                        // onTap: () => Helpers.permanentNavigator(
                            // context, const SignupPage()),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                              style: GoogleFonts.poppins(
                                  fontSize: 12, color: appColors.red),
                              children: [
                                const TextSpan(text: "Don't have an Account? "),
                                TextSpan(
                                    text: " Register",
                                    style: GoogleFonts.poppins(
                                        color: appColors.red,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(0),
              appColors.red.withOpacity(0.6)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}