import 'package:movfilix/common_widgets/bg_screen.dart';
import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/constants/app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: BackgroundScreen(
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
              const TextfieldComponent(
                hintText: "Password",
                suffixIcon: Icons.visibility_off,
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.forgetPassword),
                  child: const Text(
                    "Forget Password",
                  ),
                ),
              ),
              CustomButton(
                name: "Login",
                ontap: () => Get.toNamed(AppRoutes.routeScreen),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () => Get.toNamed(AppRoutes.signupScreen),
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
    );
  }
}
