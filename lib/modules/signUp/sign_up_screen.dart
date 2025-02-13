import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../core/extensions/validations.dart';
import '/main.dart';
import '/core/theme/color_palette.dart';
import '/core/constants/app_assets.dart';
import '/core/extensions/extensions.dart';
import '/core/routes/pages_route_name.dart';
import '/core/widgets/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Register",style: TextStyle(color: Colors.black),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Change color here
          onPressed: () => Navigator.pop(context),
        ),
        // backgroundColor: Colors.white,
        // title: const Text(
        //   "Register",
        //   style: TextStyle(color: Colors.black),
        // ).setCenter(),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Image.asset(
              "assets/images/evently_logo.png",
              height: 0.2.height,
            ),
            CustomTextField(
              controller: _nameController,
              hint: "Name",
              onValidate: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "plz enter your name";
                }
                return null;
              },
              hintColor: ColorPalette.generalGreyColor,
              prefixIcon: const Icon(Icons.person),
            ).setOnlyPadding(context, 0.03, 0.0, 0.0, 0.0),
            CustomTextField(
              controller: _emailController,
              hint: "Email",
              onValidate: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please Enter Your Email address";
                }
                if (!Validations.validateEmail(value)) {
                  return "Please Enter A Valid Email address";
                }
                return null;
              },
              hintColor: ColorPalette.generalGreyColor,
              prefixIcon: const Icon(Icons.email),
            ).setOnlyPadding(context, 0.02, 0.01, 0.0, 0.0),
            CustomTextField(
              controller: _passwordController,
              isPassword: true,
              maxLines: 1,
              hint: "Password",
              onValidate: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please Enter Your Password";
                }
                if (!Validations.validatePassword(value)) {
                  return "Please Enter A Valid Password";
                }
                return null;
              },
              hintColor: ColorPalette.generalGreyColor,
              prefixIcon: const Icon(Icons.lock),
            ).setOnlyPadding(context, 0.01, 0.01, 0.0, 0.0),
            CustomTextField(
              isPassword: true,
              maxLines: 1,
              hint: "Re-Password",
              hintColor: ColorPalette.generalGreyColor,
              onValidate: (value) {
                if (value == null || value.trim().isEmpty) {
                  return "Please Enter Your Email address";
                }
                if (value != _passwordController.text) {
                  return "Password does not match";
                }
                return null;
              },
              prefixIcon: const Icon(Icons.lock),
            ).setOnlyPadding(context, 0.01, 0.0, 0.0, 0.0),
            ElevatedButton(
              onPressed: () {
                // if (formKey.currentState!.validate()) {
                //   FirebaseFunctions.createAccount(
                //     emailAddress: _emailController.text,
                //     password: _passwordController.text,
                //   ).then(
                //         (value) {
                //       EasyLoading.dismiss();
                //       if (value == true) {
                //         navigatorKey.currentState!.pushNamedAndRemoveUntil(
                //           PagesRouteName.signIn,
                //               (route) => false,
                //         );
                //       }
                //     },
                //   );
                // }
              },
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: ColorPalette.primaryColor,
                padding: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              child: Text(
                "Register",
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorPalette.white,
                ),
              ),
            ).setVerticalPadding(context, 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already Have an Account?"),
                TextButton(
                  onPressed: () {
                    navigatorKey.currentState!.pushNamed(PagesRouteName.signUp);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0XFF5669FF),
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5),
                  ),
                ),
              ],
            ),
          ],
        ).setHorizontalPadding(context, 0.05),
      ),
    );
  }
}
