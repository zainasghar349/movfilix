import 'package:movfilix/common_widgets/custom_button.dart';
import 'package:movfilix/common_widgets/textfield_components.dart';
import 'package:movfilix/constants/exports.dart';

class AccountDetailScreen extends StatelessWidget {
  const AccountDetailScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Account",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),centerTitle: true,backgroundColor: AppColors.secondary,),
      body: Padding(
        padding: const EdgeInsets.only(right: 50,left: 50,top:60),
        child: Column(
          children: [
            const TextfieldComponent(hintText: "Change Email"),
            const SizedBox(height: 20,),
            const TextfieldComponent(hintText: "Change Password"),
            const SizedBox(height: 40
            ,),
            CustomButton(name: "Save", ontap:()=> Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}