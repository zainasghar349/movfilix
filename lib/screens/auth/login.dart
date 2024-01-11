import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/app_assets.dart';
import 'package:movfilix/constants/app_colors.dart';
import 'package:movfilix/constants/app_fonts.dart';
import 'package:movfilix/screens/auth/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            AppAssets.bgPng,
            height: size.height * 0.7,
            fit: BoxFit.fill,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.secondary.withOpacity(0.4),
                  AppColors.secondary,
                  AppColors.secondary,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Hello",
                        style: TextStyle(
                          fontFamily: AppFonts.islandMoments,
                          fontSize: 32,
                        ),
                      ),
                      Image.asset(
                        AppAssets.icon,
                        height: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Text(
                    "Login to Movflix",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextfieldComponent(hintText: "Email"),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextfieldComponent(hintText: "Password",suffixIcon: Icons.visibility_off,),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password",
                      ),
                    ),
                  ),
                  const CustomButton(name: "Login"),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              )),
                          child: const Text("Sign up"))
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
