import 'package:fooddelivery_backend/controller/popular_product_controller.dart';
import 'package:fooddelivery_backend/data/api/api_client.dart';
import 'package:fooddelivery_backend/data/repository/popular_product_repo.dart';
import 'package:fooddelivery_backend/utils/app_constants.dart';
import 'package:get/get.dart';


Future<void> init()async {

  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl:AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  
  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}