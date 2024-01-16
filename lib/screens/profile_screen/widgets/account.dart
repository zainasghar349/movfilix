import 'package:flutter/material.dart';
import 'package:movfilix/screens/profile_screen/widgets/account_detail_change.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
         padding: const EdgeInsets.only(right:20,left: 20),
         child: InkWell(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountDetailScreen(),)),
           child: const Row(
            children: [
               Icon(Icons.person),
            SizedBox(width: 20,),
            Text("Account",style: TextStyle(fontSize: 14),)
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