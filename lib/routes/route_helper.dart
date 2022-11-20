import 'package:fooddelivery_backend/pages/cart/cart_page.dart';
import 'package:fooddelivery_backend/pages/food/popular_food_detail.dart';
import 'package:fooddelivery_backend/pages/food/recommended_food_detail.dart';
import 'package:fooddelivery_backend/pages/home/home_page.dart';
import 'package:fooddelivery_backend/pages/home/main_foot_page.dart';
import 'package:fooddelivery_backend/pages/splash/splash_page.dart';
import 'package:get/get.dart';

class RouteHelper{
  static const String splashPage = "/splash-page";
  static const String initial ="/";
  static const String popularFood="/popular-food";
  static const String recommendedFood ="/recommended-food";
  static const String cartPage = "/cart-page";

  static String getSplashPage()=>'$splashPage';
  static String getInitial() => '$initial';
  static String getPopularFood(int pageId, String page)=> '$popularFood?pageId=$pageId&page=$page';
  static String getRecommendedFood(int pageId, String page)=> '$recommendedFood?pageId=$pageId&page=$page';
  static String getCartPage()=>'$cartPage';

  static List<GetPage> routes = [
    GetPage(name: splashPage, page: ()=>SplashScreen()),
    GetPage(name: initial, page: ()=>HomePage()),

    GetPage(name: popularFood, page: (){
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters['page'];
      return PopularFoodDetail(pageId: int.parse(pageId!), page:page!);
    },
        transition: Transition.fadeIn
    ),

    GetPage(name: recommendedFood, page: (){
      var pageId = Get.parameters['pageId'];
      var page = Get.parameters['page'];
      return RecommendFoodDetail(pageId: int.parse(pageId!), page:page!);
    },
        transition: Transition.fadeIn
    ),

    GetPage(name: cartPage, page: (){
      return CartPage();
    },
        transition: Transition.fadeIn
    ),
  ];
}