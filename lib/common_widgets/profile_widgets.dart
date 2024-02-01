
import 'package:movfilix/constants/exports.dart';


class ProfileWidgets extends StatelessWidget {
  final IconData icons;
  final String title;
  final Widget? tralling ;
  const ProfileWidgets({Key?key, required this.icons, required this.title, this.tralling }):super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        ListTile(
          leading: Icon(icons),
          title: Text(title),
          trailing: tralling,
        
        ),
        
        
      ],
    );
  }
}