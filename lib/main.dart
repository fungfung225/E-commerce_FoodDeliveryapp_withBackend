import 'package:flutter/material.dart';
import 'package:fooddelivery_backend/controller/popular_product_controller.dart';
import 'package:fooddelivery_backend/controller/recommended_product_controller.dart';
import 'package:fooddelivery_backend/pages/food/popular_food_detail.dart';
import 'package:fooddelivery_backend/pages/food/recommended_food_detail.dart';
import 'package:fooddelivery_backend/pages/home/food_page_body.dart';
import 'package:fooddelivery_backend/pages/home/main_foot_page.dart';
import 'package:fooddelivery_backend/routes/route_helper.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      Get.find<PopularProductController>().getPopularProductList();
      Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
