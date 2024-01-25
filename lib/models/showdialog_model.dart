
import 'package:movfilix/constants/exports.dart' show IconData, immutable;

@immutable
class ShowDialogModel {
  final IconData icon;
  final String title;
  final Function() ontap;

  const ShowDialogModel( {  required this.ontap, required this.icon, required this.title});
}