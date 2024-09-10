
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shubham4338/utils/helper/notification_service.dart';

class FCMHelper {
  static FCMHelper fcm = FCMHelper._();

  FCMHelper._();
  String? token;

  Future<void> getToken() async {
    token = await FirebaseMessaging.instance.getToken();
    print("==============${token}");
  }

  Future<void> receiveMessage() async {
    getToken();
    FirebaseMessaging.onMessage.listen(
          (event) {
        if (event.notification != null) {
          String? title = event.notification!.title;
          String? body = event.notification!.body;
          NotificationService.helper.showNotification(title!, body!);
        }
      },
    );
  }
}