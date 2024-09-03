import 'package:flutter/cupertino.dart';
import 'package:shubham4338/screen/home/view/home_screen.dart';
import 'package:shubham4338/screen/login/view/login_screen.dart';
import 'package:shubham4338/screen/profile/view/profile_screen.dart';
import 'package:shubham4338/screen/registor/view/registor_screen.dart';
import 'package:shubham4338/screen/splash/view/splash_screen.dart';

Map<String,WidgetBuilder> routes_spp={
  '/':(context)=>const SplashScreen(),
  'home':(context)=>const HomeScreen(),
  'login':(context)=>const LoginScreen(),
  '/register':(context)=>const RegistorScreen(),
  'profile':(context)=>ProfileScreen(),

};