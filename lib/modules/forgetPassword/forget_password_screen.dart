import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../../core/extensions/validations.dart';
import '/main.dart';
import '/core/theme/color_palette.dart';
import '/core/constants/app_assets.dart';
import '/core/extensions/extensions.dart';
import '/core/routes/pages_route_name.dart';
import '/core/widgets/custom_text_field.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forget Password",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,
              color: Colors.black), // Change color here
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
            Image.asset(
              "assets/images/forget_password_BG.png",
              height: 0.5.height,
            ),
            const CustomTextField(
              backgroundColor: Colors.transparent,
              hint: "Email",
              hintColor: ColorPalette.generalGreyColor,
              prefixIcon: Icon(
                Icons.email,
                color: ColorPalette.generalGreyColor,
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0XFF5669FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ).setHorizontalPadding(context, 0.05),
      ),
    );
  }
}
