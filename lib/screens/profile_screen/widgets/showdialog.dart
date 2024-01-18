import 'package:flutter/material.dart';
import 'package:movfilix/common_widgets/custom_button.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Sign Out"),
      content: const Text("Sure you want to sign out?",style: TextStyle(fontSize: 14,color: Color(0xffFFFFFF)),),
      actions: [
        CustomButton(name: "No", ontap: (){},size: 80,),
        CustomButton(name: "Yes", ontap: (){},size: 80,)
      ],
      
    );
  }
}