import 'dart:convert';
import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;

class NotificationManagement {
  static void onGroundMessaging() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
     
    });
  }

  static Future<void> firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    await Firebase.initializeApp();
  }

  static void open() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      log('eng mahmood ma b3raf y3mal turkish cofee with face');
     
    });
  }

  static void sendNotification(
    String token,
    Map<String, dynamic> data,// you can send any data
    Map<String, dynamic>
    notification, // {title:"any title",body:"any data for body"}
  ) async {
    // 1. تحميل ملف حساب الخدمة
    final serviceAccountJson = await rootBundle.loadString(
      'assets/json/notification.json',
    );

    final serviceAccount = ServiceAccountCredentials.fromJson(
      jsonDecode(serviceAccountJson),
    );

    // 2. تحديد الصلاحيات المطلوبة (scopes)
    const scopes = ['https://www.googleapis.com/auth/firebase.messaging'];

    // 3. إنشاء عميل مصادق عليه
    final client = await clientViaServiceAccount(serviceAccount, scopes);

    // 4. جلب التوكن
    final accessToken = client.credentials.accessToken.data;
    // log(accessToken);
    // print('✅ Access Token: $accessToken');

    // 5. إرسال إشعار (اختياري)
    const fcmUrl =
        'https://fcm.googleapis.com/v1/projects/(your_project_id)/messages:send';

    final message = {
      "message": {"notification": notification, "data": data, "token": token},
    };

    http.Response response = await http.post(
      Uri.parse(fcmUrl),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: jsonEncode(message),
    );
    log(response.statusCode.toString());
    log(response.body);
    client.close();
  }
}
