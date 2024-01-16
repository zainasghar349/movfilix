import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/bg_screen.dart';
import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';

import '../main _screen/home_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:BackgroundScreen(
        isBackArrow: true,
        child: Padding(
          padding: const EdgeInsets.only(right:50,left: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("New Password",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white),),
              const SizedBox(height: 10,),
              const Text("Must be at least 8 characteristics long.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal),),
              const SizedBox(height: 30,),
              const TextfieldComponent(hintText: "Enter New Password"),
              const SizedBox(height: 20,),
              const TextfieldComponent(hintText: "Confirm Password"),
              const SizedBox(height: 30,),
              CustomButton(name: "Reset Password",  ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },),
            ],
          ),
        ),
      )
      



    );
  }
}