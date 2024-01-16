import 'package:flutter/material.dart';

class HelpSection extends StatelessWidget {
  const HelpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 20,left: 20),
          child: Row(
            children: [
            Icon(Icons.help),
            SizedBox(width: 20,),
            Text("help"),
          ],),
        ),
        const SizedBox(height: 10,),
        Divider(height: 20,color: Colors.white.withOpacity(0.2),),
      ],
    );
  }
}