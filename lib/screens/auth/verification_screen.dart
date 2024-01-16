import 'package:movfilix/common_widgets/bg_screen.dart';
import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/screens/auth/newpaasword_screen.dart';

class VarificationScreen extends StatelessWidget {
  const VarificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundScreen(
          isBackArrow: true,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Verification",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xffFFFFFF),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                AppConstants.verification.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  clipBehavior: Clip.antiAlias,
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(AppConstants.verification[index].number),
                  ),
                ),
              )),
          const SizedBox(height: 20),
          const Text("02:00 sec"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "If you don't receive a code,",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffABABAB),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Resend",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            name: "Continue",
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NewPasswordScreen()),
            ),
          )
        ],
      ),
    ));
  }
}
