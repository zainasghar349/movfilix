import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/exports.dart';

import '../home _screen/home_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    "Create account ",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const TextfieldComponent(hintText: "Full name"),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextfieldComponent(hintText: "Email address"),
                  const SizedBox(height: 20),
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
                      onPressed: () {},
                      child: const Text(
                        "Forget Password",
                      ),
                    ),
                  ),
                   CustomButton(name: "Sign Up",  ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                        onPressed: () => Get.back(),
                        child: const Text("Log in"),
                      )
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
