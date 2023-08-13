import 'package:food_app_getx/controllers/cart_controller.dart';
import 'package:food_app_getx/controllers/popular_product_controller.dart';
import 'package:food_app_getx/controllers/recommended_product_controller.dart';
import 'package:food_app_getx/data/api/api_client.dart';
import 'package:food_app_getx/data/repository/cart_repo.dart';
import 'package:food_app_getx/data/repository/popular_product_repo.dart';
import 'package:food_app_getx/data/repository/recommended_product_repo.dart';
import 'package:food_app_getx/util/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  Get.lazyPut(() => sharedPreferences);
  /* ------------------------------- api client ------------------------------- */
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  /* ---------------------------------- repos --------------------------------- */
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));

  /* ------------------------------- controllers ------------------------------ */
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
