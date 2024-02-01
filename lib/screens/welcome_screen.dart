import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/constants/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    Key?key,
  }):super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.secondary,
          ),
          child: Stack(
            children: [
              Image(
                image: const AssetImage('assets/images/img1.png'),
                height: size.height * 0.7,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: size.height * 0.32,
                  width: double.infinity,
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButton(
                        name: "Continue",
                        ontap: () => Get.toNamed(AppRoutes.loginScreen),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Have you agreed to our ",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "Terms of Services",
                          style: TextStyle(color: Color(0xff037CBC)),
                          children: [
                            TextSpan(
                                text: ' & ',
                                style: TextStyle(color: Colors.white)),
                            TextSpan(
                                text: "Privacy Policy",
                                style: TextStyle(color: Color(0xff037CBC)))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
