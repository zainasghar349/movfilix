import 'package:movfilix/common_widgets/bg_screen.dart';
import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/constants/app_routes.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundScreen(
        isBackArrow: true,
        child: Padding(
          padding: const EdgeInsets.only(right: 40, left: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Forgot Password",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 30,
              ),
              const TextfieldComponent(hintText: "Email"),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back to sign in",
                  style: TextStyle(
                      fontSize: 9.62,
                      color: Color(0xffABABAB),
                      fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                  name: "Continue",
                  ontap: () => Get.toNamed(AppRoutes.verificationScreen),
              )
            ],
          ),
        ),
      ),
    );
  }
}
