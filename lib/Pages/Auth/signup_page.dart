import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Components/customerText.dart';
import '../../Components/customerbuton.dart';
import '../../Components/customerloader.dart';
import '../../Global/fade_in.dart';
import '../../Helpers/naigationHelper.dart';
import '../Colors/appcolors.dart';
import 'login_page.dart';

class signupPage extends StatefulWidget {
  const signupPage({super.key});
  @override
  State<signupPage> createState() => _signupPageState();
}
class _signupPageState extends State<signupPage> {
  final appColors = AppColors();
  TextEditingController emailController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController condirmPasswordController = TextEditingController();
  TextEditingController idNumberController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isValidEmail(String value) {
    // Use a regular expression to check if the email format is valid
    final emailRegExp = RegExp(
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$');
    return emailRegExp.hasMatch(value);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 270,
                  width: 300,
                  child: Image.asset("assets/images/logo.png"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      FadeInSlide(
                        duration: 2.2,
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                            color: appColors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      FadeInSlide(
                        duration: 1.4,
                        child: CustomTextField(
                          validator: 'first name cannot be empty',
                          controller: firstnameController,
                          labelText: 'First Name',
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                        duration: 1.4,
                        child: CustomTextField(
                          validator: "last name cannot be empty",
                          controller: emailController,
                          labelText: 'Last Name',
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                          duration: 1.4,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            obscureText: false,
                            controller: idNumberController,
                            enabled: true,
                            decoration: InputDecoration(
                              filled: false,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              prefixIcon: Icon(
                                Icons.person,
                                color: appColors.grey,
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
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              labelText: 'Id Number',
                              labelStyle: TextStyle(
                                  color: appColors.grey, fontSize: 12),
                            ),
                            style:
                                TextStyle(color: appColors.black, fontSize: 12),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Id Number cannot be empty";
                              } else {
                                return null;
                              }
                            },
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                        duration: 1.4,
                        child: TextFormField(
                            keyboardType: TextInputType
                                .number, // Set keyboardType to accept email addresses
                            obscureText: false,
                            controller: phoneNumberController,
                            enabled: true,
                            decoration: InputDecoration(
                              filled: false,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              prefixIcon: Icon(Icons.phone,
                                  color: appColors
                                      .grey), // Change the prefixIcon to an email icon
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
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              labelText:
                                  'Phone Number', // Change the labelText to 'Email'
                              labelStyle: TextStyle(
                                  color: appColors.grey, fontSize: 12),
                            ),
                            style:
                                TextStyle(color: appColors.black, fontSize: 12),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Phone number is required';
                              } else if (value.length != 10) {
                                return 'Please enter a valid phone number';
                              } else {
                                return null;
                              }
                            }),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                          duration: 1.4,
                          child: TextFormField(
                            keyboardType: TextInputType
                                .emailAddress, // Set keyboardType to accept email addresses
                            obscureText: false,
                            controller: emailController,
                            enabled: true,
                            decoration: InputDecoration(
                              filled: false,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              prefixIcon: Icon(Icons.email,
                                  color: appColors
                                      .grey), // Change the prefixIcon to an email icon
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
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              labelText:
                                  'Email', // Change the labelText to 'Email'
                              labelStyle: TextStyle(
                                  color: appColors.grey, fontSize: 12),
                            ),
                            style:
                                TextStyle(color: appColors.black, fontSize: 12),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email cannot be empty";
                              } else if (!_isValidEmail(value)) {
                                // Add email validation using a helper function
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
                        child: CustomTextField(
                          validator: "password cannot be empty",
                          controller: passwordController,
                          obscureText: true,
                          labelText: 'Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInSlide(
                        duration: 1.6,
                        child: CustomTextField(
                          validator: "confirm password cannot be empty",
                          controller: passwordController,
                          obscureText: true,
                          labelText: 'Confirm Password',
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ),
                        ),
                      ),
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
                              'sign up',
                              style: TextStyle(color: appColors.white),
                            ),
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) {
                                      return const CustomLoader(
                                          message: 'Logging in');
                                    });
                              }

                              // await AuthServices.login(context: context, emailAddress: emailController.text.trim(), password: passwordController.text.trim());
                            }),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      FadeInSlide(
                        duration: 2.8,
                        child: GestureDetector(
                          onTap: () => Helpers.permanentNavigator(
                              context,  LoginPage()),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: appColors.red),
                                children: [
                                  const TextSpan(
                                      text: "Don't have an Account? "),
                                  TextSpan(
                                      text: " Login",
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
              ),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      appColors.white.withOpacity(0),
                      appColors.white.withOpacity(0),
                      appColors.red.withOpacity(0.6)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}