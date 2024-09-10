import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shubham4338/utils/helper/fcm_helper.dart';
import 'package:shubham4338/utils/helper/notification_service.dart';
import 'package:shubham4338/utils/routs_app.dart';

import 'firebase_options.dart';
import 'screen/home/controller/home_controller.dart';

HomeController controller = Get.put(HomeController());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  NotificationService.helper.initNotification();
  FCMHelper.fcm.receiveMessage();
  runApp(Obx(() {
    controller.getData();
    return GetMaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: controller.mode.value,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: app_route,
    );
  }));
}
