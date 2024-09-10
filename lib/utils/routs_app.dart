
import 'package:flutter/cupertino.dart';
import 'package:shubham4338/screen/chat/view/chat_screen.dart';
import 'package:shubham4338/screen/contact/view/contact_screen.dart';
import 'package:shubham4338/screen/home/view/home_screen.dart';
import 'package:shubham4338/screen/login/view/login_screen.dart';
import 'package:shubham4338/screen/profile/view/profile_screen.dart';
import 'package:shubham4338/screen/registor/view/registor_screen.dart';
import 'package:shubham4338/screen/splash/view/splash_screen.dart';

Map<String, WidgetBuilder> app_route = {
  "/": (context) => const SplashScreen(),
  "login": (context) => const SignInScreen(),
  "signup": (context) => const SignUpScreen(),
  "profile": (context) => const ProfileScreen(),
  "home": (context) => const HomeScreen(),
  "contact": (context) => const ContactScreen(),
  "chat": (context) => const ChatScreen(),
};