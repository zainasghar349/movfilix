import 'package:movfilix/constants/exports.dart';
import 'package:movfilix/routes.dart';
import 'package:movfilix/screens/auth/forget_pass_screen.dart';
import 'package:movfilix/screens/auth/login.dart';
import 'package:movfilix/screens/auth/newpaasword_screen.dart';
import 'package:movfilix/screens/auth/signup_screen.dart';
import 'package:movfilix/screens/auth/verification_screen.dart';
import 'package:movfilix/screens/detail_screen/detail_screen.dart';
import 'package:movfilix/screens/detail_screen/download_screen.dart';
import 'package:movfilix/screens/detail_screen/watch_later.dart';
import 'package:movfilix/screens/home%20_screen/home_screen.dart';
import 'package:movfilix/screens/home%20_screen/widgets/see_all.dart';
import 'package:movfilix/screens/library/library_screen.dart';
import 'package:movfilix/screens/profile_screen/profile_screen.dart';
import 'package:movfilix/screens/profile_screen/widgets/account_detail_change.dart';
import 'package:movfilix/screens/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/WelcomeScreen';
  static const String loginScreen = '/LoginScreen';
  static const String signupScreen = '/SignupScreen';
  static const String forgetPassword = '/ForgetPassScreen';
  static const String verificationScreen = '/VerificationScreen';
  static const String newPasswordScreen = "/NewPasswordScreen";
  static const String watchLaterScreen = "/WatchLaterScreen";
  static const String routeScreen = '/RouteScreen';
  static const String homeScreen = '/HomeScreen';
  static const String detailScreen = '/DetailScreen';
  static const String libraryScreen = '/LibraryScreeen';
  static const String downloadScreen = '/DownloadScreen';
  static const String profileScreen = '/ProfileScreen';
  static const String accountDetailChange = '/AccountDetailChange';
  static const String seeAllScreen = '/SeeAllScreen';


  static final routes = <GetPage>[
    GetPage(
      name: welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: signupScreen,
      page: () => const SignupScreen(),
    ),
    GetPage(
      name: forgetPassword,
      page: () => const ForgetPassScreen(),
    ),
    GetPage(
      name: verificationScreen,
      page: () => const VarificationScreen(),
    ),
    GetPage(
      name: newPasswordScreen,
      page: () => const NewPasswordScreen(),
    ),
    GetPage(
      name: watchLaterScreen,
      page: () => const WatchLater(),
    ),
    GetPage(
      name: routeScreen,
      page: () => const RouteScreen(),
    ),
    GetPage(
      name: homeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: libraryScreen,
      page: () => const LibraryScreen(),
    ),
    GetPage(
      name: downloadScreen,
      page: () => const DownloadScreen(),
    ),
    GetPage(
      name: profileScreen,
      page: () => const ProfileScreen(),
    ),
    GetPage(
      name: detailScreen,
      page: () => const DetailScreen(),
    ),
    GetPage(
      name: accountDetailChange,
      page: () => const AccountDetailScreen(),
    ),
    GetPage(
      name: seeAllScreen,
      page: () => const SeeAllScreen(),
    ),
  ];
}
