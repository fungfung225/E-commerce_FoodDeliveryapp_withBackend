import 'package:flutter/material.dart';
import 'package:fooddelivery_backend/controller/cart_controller.dart';
import 'package:fooddelivery_backend/controller/popular_product_controller.dart';
import 'package:fooddelivery_backend/controller/recommended_product_controller.dart';
import 'package:fooddelivery_backend/pages/auth/sign_in_page.dart';
import 'package:fooddelivery_backend/pages/auth/sign_up_page.dart';
import 'package:fooddelivery_backend/pages/cart/cart_page.dart';
import 'package:fooddelivery_backend/pages/food/popular_food_detail.dart';
import 'package:fooddelivery_backend/pages/food/recommended_food_detail.dart';
import 'package:fooddelivery_backend/pages/home/food_page_body.dart';
import 'package:fooddelivery_backend/pages/home/main_foot_page.dart';
import 'package:fooddelivery_backend/pages/splash/splash_page.dart';
import 'package:fooddelivery_backend/routes/route_helper.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  //make sure dependices are loaded correctly and wait unil
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(builder: (_){
      return GetBuilder<RecommendedProductController> (builder: (_){
        return   GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          //home: SignInPage(),
          initialRoute: RouteHelper.getSplashPage(),
          getPages: RouteHelper.routes,
        );
      });
    },);
  }
}
