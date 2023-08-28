import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_email_sent_successfully/screen_email_sent_successfully.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_find_accounts_done/screen_find_accounts_done.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_find_email_done/screen_find_email_done.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_find_password/screen_find_password.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_login/screen_login.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_login_intro/screen_login_intro.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_phone_number_verfication/screen_phone_number_verfication.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_recover_account/screen_recover_account.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_sign_up/screen_sign_up.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_sign_up_done/screen_sign_up_done.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_sign_up_user_name/screen_sign_up_user_name.dart';
import 'package:bellboy_customer/layer_presentation/screen_splash_page/splash_page.dart';
import 'package:bellboy_customer/layer_presentation/screen_authentication/screen_terms_of_usage/screen_terms_of_usage.dart';
import 'package:flutter/cupertino.dart';

class ScreenArguments {
  final Map<String, dynamic> data;

  ScreenArguments({required this.data});
}

class AppRouterPaths {
  ///LOGIN
  static const String splashRoute = '/';
  static const String loginIntro = '/login_intro';
  static const String login = '/login';
  static const String emailSentDone = '/email_sent_done';

  ///SIGN UP
  static const String signUp = '/sign_up';
  static const String termsOfUsage = '/terms_of_usage';
  static const String signUpUserName = '/sign_up_user_name';
  static const String emailSentSuccessfully = '/email_sent_successfully';
  static const String screenSignUpDone = '/screen_sign_up_done';

  ///PASSWORD RESET
  static const String findPassword = '/forget_password';
  static const String findAccountsDone = '/find_accounts_done';
  static const String phoneNumberVerification = '/phone_number_verification';
  static const String findEmailDone = '/find_email_done';



}

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //BUILDER
    WidgetBuilder builder;
    //ROUTERS PATH SWITCH
    switch (settings.name) {
      case AppRouterPaths.splashRoute:
        builder = (_) => const SplashPage();
        break;
      case AppRouterPaths.loginIntro:
        builder = (_) => const ScreenLoginIntro();
        break;
      case AppRouterPaths.login:
        builder = (_) => const ScreenLogin();
        break;
      case AppRouterPaths.emailSentDone:
        builder = (_) => const ScreenRecoverAccount();
        break;
      case AppRouterPaths.signUp:
        builder = (_) => const ScreenSignUp();
        break;
      case AppRouterPaths.termsOfUsage:
        builder = (_) => const ScreenTermsOfUsage();
        break;
      case AppRouterPaths.signUpUserName:
        builder = (_) => const ScreenSignUpUserName();
        break;
      case AppRouterPaths.emailSentSuccessfully:
        builder = (_) => const ScreenEmailSentSuccessfully();
        break;
      case AppRouterPaths.findPassword:
        builder = (_) => const ScreenFindPassword();
        break;
      case AppRouterPaths.findAccountsDone:
        builder = (_) => const ScreenFindAccountsDone();
        break;
      case AppRouterPaths.screenSignUpDone:
        builder = (_) => const ScreenSignUpDone();
        break;
      case AppRouterPaths.phoneNumberVerification:
        builder = (_) => const ScreenPhoneNumberVerification();
        break;
      case AppRouterPaths.findEmailDone:
        builder = (_) => const ScreenFindEmailDone();
        break;


      default:
        throw Exception('Invalid route: ${settings.name}');
    }

    //BUILDER  WITH ROUTERS
    return CupertinoPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
