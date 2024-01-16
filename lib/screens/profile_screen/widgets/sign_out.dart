import 'package:flutter/material.dart';

class SignOut extends StatelessWidget {
  const SignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: InkWell(
            onTap: (){},
            child: const Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 20,),
                Text("SignOut",style: TextStyle(fontSize: 14),),
            
              ],
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Divider(height: 20,color: Colors.white.withOpacity(0.2),),
      ],
    );
  }
}