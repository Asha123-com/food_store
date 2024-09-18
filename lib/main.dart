import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_store/manager/binding%20class.dart';
import 'package:food_store/pages/cart%20page.dart';
import 'package:food_store/pages/features%20page.dart';
import 'package:food_store/pages/nagivation.dart';
import 'package:food_store/pages/order%20page.dart';
import 'package:food_store/pages/phone%20page.dart';
import 'package:food_store/pages/rating%20bar.dart';
import 'package:food_store/pages/splash%20screen.dart';
import 'package:food_store/signin%20login%20page/landing.dart';
import 'package:food_store/signin%20login%20page/login.dart';
import 'package:food_store/signin%20login%20page/otp%20page.dart';
import 'package:food_store/signin%20login%20page/register%20page.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        initialRoute: '/Splash',
        getPages: [
          GetPage(name: '/Splash', page:()=> Splash()),
          GetPage(name: '/signup', page: () => signup(), binding: BindingClass(),),
          GetPage(name: '/otp', page: () => Otp()),
          GetPage(name: '/register', page: () => register()),
          GetPage(name: '/login', page: () => login()),
          GetPage(name: '/phone', page: () => phone()),
          GetPage(name: '/buttom', page: () => buttom(), binding: BindingClass(),),
          GetPage(name: '/detail_food', page: () => DetailFood(addModel: Get.arguments, hotelclass: Get.arguments,), binding: BindingClass(),),
          GetPage(name: '/cart', page: ()=> cart()),
          GetPage(name: '/rating', page: ()=> rating()),
          GetPage(name: '/order', page: ()=> orders())
        ],
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
      ),
    );
  }
}
